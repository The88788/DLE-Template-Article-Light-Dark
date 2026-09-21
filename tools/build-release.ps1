[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateSet('20.0', '21.0')]
    [string] $Version
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$sourceTemplates = Join-Path $repoRoot "DLE_$Version\templates"
$installHtmlTemplate = Join-Path $repoRoot 'release\INSTALL.template.html'
$distDirectory = Join-Path $repoRoot 'dist'
$archiveName = "Article-DLE-$Version-Light-Dark.zip"
$archivePath = Join-Path $distDirectory $archiveName
$tempBase = [System.IO.Path]::GetTempPath()
$buildDirectory = Join-Path $tempBase ("article-release-" + [guid]::NewGuid().ToString('N'))

if (-not (Test-Path -LiteralPath $sourceTemplates -PathType Container)) {
    throw "Template directory not found: $sourceTemplates"
}
if (-not (Test-Path -LiteralPath $installHtmlTemplate -PathType Leaf)) {
    throw "HTML installation template not found: $installHtmlTemplate"
}

try {
    New-Item -ItemType Directory -Path $buildDirectory | Out-Null
    Copy-Item -LiteralPath $sourceTemplates -Destination (Join-Path $buildDirectory 'templates') -Recurse
    $installHtml = (Get-Content -LiteralPath $installHtmlTemplate -Raw).Replace('{{DLE_VERSION}}', $Version)
    [System.IO.File]::WriteAllText(
        (Join-Path $buildDirectory 'INSTALL.html'),
        $installHtml,
        [System.Text.UTF8Encoding]::new($false)
    )

    New-Item -ItemType Directory -Path $distDirectory -Force | Out-Null
    Compress-Archive -Path (Join-Path $buildDirectory '*') -DestinationPath $archivePath -CompressionLevel Optimal -Force

    $hash = Get-FileHash -Algorithm SHA256 -LiteralPath $archivePath
    Write-Output "Archive: $archivePath"
    Write-Output "SHA-256: $($hash.Hash)"
}
finally {
    $resolvedTemp = [System.IO.Path]::GetFullPath($tempBase)
    $resolvedBuild = [System.IO.Path]::GetFullPath($buildDirectory)
    if ((Test-Path -LiteralPath $resolvedBuild) -and $resolvedBuild.StartsWith($resolvedTemp, [System.StringComparison]::OrdinalIgnoreCase)) {
        Remove-Item -LiteralPath $resolvedBuild -Recurse -Force
    }
}
