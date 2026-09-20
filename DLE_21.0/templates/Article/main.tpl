<!DOCTYPE html>
<html lang="ru-RU">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" type="image/png" href="{THEME}/images/favicon.ico">
{headers}
<link rel="stylesheet" href="{THEME}/css/bootstrap.min.css" type="text/css" media="all">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/simple-icons-font@16.24.1/font/simple-icons.min.css" media="all">
<link rel="stylesheet" href="{THEME}/css/simple-line-icons.css" type="text/css" media="all">
<link rel="stylesheet" href="{THEME}/css/style.css?v=2" type="text/css" media="all">
<link rel="stylesheet" href="{THEME}/css/engine.css" type="text/css" media="all">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" media="all">
</head>

<body>

<div class="site-wrapper">

<div class="main-overlay"></div>

{include file="modules/header.tpl"}
    
<main class="main-content">
<div class="container-xl">

<div class="row gy-4">

<div class="col-lg-8">

[available=lastcomments]<div class="section-header"><h1 class="section-title"><i class="icon-bubbles text-default"></i> Комментарии</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>[/available]
[available=newposts]<div class="section-header"><h1 class="section-title"><i class="icon-book-open text-default"></i> Непрочитанное</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>[/available]
[available=lastnews]<div class="section-header"><h1 class="section-title"><i class="icon-docs text-default"></i> Все публикации</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>[/available]
[available=cat]<div class="section-header"><h1 class="section-title"><i class="icon-folder text-default"></i> {category-title}</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div><p class="mb-5">{category-description}</p>[/available]
[available=favorites]<div class="section-header"><h1 class="section-title"><i class="icon-heart text-default"></i> Ваши закладки</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>[/available]
    
[available=lastcomments]<div class="comments bordered padding-30 rounded"><ul class="comments">[/available]
    
[not-available=main]{content}{info}[/not-available]
    
[available=lastcomments]</ul></div>[/available]
    
[available=main]
<div class="swiper post-carousel-widget mb-4">
<div class="swiper-wrapper">
{custom category="1,2,3" template="modules/slider" available="global" from="0" limit="5" order="date"}
</div>
<div class="swiper-pagination"></div>
</div>

<div class="section-header"><h3 class="section-title">Главное</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="padding-30 rounded bordered">
<div class="row gy-5">
<div class="col-sm-6">
{custom category="1,2,3" template="modules/custom1" available="global" from="0" limit="1" order="date"}
</div>
<div class="col-sm-6">
{custom category="1,2,3" template="modules/custom1s" available="global" from="1" limit="4" order="date"}
</div>
</div></div>

<div class="spacer" data-height="50"></div>
<div class="section-header"><h3 class="section-title">Актуальное</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="padding-30 rounded bordered">
<div class="row gy-5">
<div class="col-sm-6">
{custom category="1,2,3" template="modules/custom2" available="global" from="0" limit="1" order="date"}
{custom category="1,2,3" template="modules/custom2s" available="global" from="1" limit="2" order="date"}
</div>
<div class="col-sm-6">
{custom category="1,2,3" template="modules/custom2" available="global" from="3" limit="1" order="date"}
{custom category="1,2,3" template="modules/custom2s" available="global" from="4" limit="2" order="date"}
</div>
</div></div>
<div class="spacer" data-height="50"></div>

<div class="section-header">
<h3 class="section-title">Выбор редакции</h3>
<img src="{THEME}/images/wave.svg" class="wave" alt="wave" />
<div class="slick-arrows-top">
<button type="button" class="carousel-topNav-prev slick-custom-buttons" aria-label="Previous"><i class="icon-arrow-left"></i></button>
<button type="button" class="carousel-topNav-next slick-custom-buttons" aria-label="Next"><i class="icon-arrow-right"></i></button>
</div>
</div>
<div class="swiper post-carousel-twoCol">
<div class="swiper-wrapper">
{custom category="1,2,3" template="modules/custom3" available="global" from="0" limit="6" order="date"}
</div>
</div>
<div class="spacer" data-height="50"></div>

<div class="section-header"><h3 class="section-title">Новые публикации</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="padding-30 rounded bordered">
{custom category="1,2,3" template="shortstory" available="global" from="0" limit="4" order="date"}
<div class="text-center"><a href="lastnews/" class="btn btn-simple">Все публикации</a></div>
</div>

[/available]
    
</div>
    
{include file="modules/sidebar.tpl"}

</div></div>
</main>

{include file="modules/footer.tpl"}

</div>

{include file="modules/sidemenu.tpl"}

{jsfiles}
{AJAX}
<script src="{THEME}/js/bootstrap.min.js"></script>
<script>var dle_current_skin = '{THEME}'.split('/').pop();</script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="{THEME}/js/custom.js"></script>

</body>
</html>
