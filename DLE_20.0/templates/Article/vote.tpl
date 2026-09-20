<div class="widget-header text-center"><h3 class="widget-title">{title}</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content">

[votelist]
<form method="post" name="vote">
[/votelist]

<div class="vote_list mb-4 text-muted">{list}</div>

[voteresult]
<div class="vote_votes grey">Проголосовало: {votes}</div>
[/voteresult]

[votelist]
<input type="hidden" name="vote_action" value="vote">
<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
<button class="btn btn-default rounded w-100 mb-2" type="button" onclick="doVote('vote'); return false;">Голосовать</button>
<button class="btn btn-light rounded w-100" type="button" onclick="doVote('results'); return false;">Результаты</button>

</form>
[/votelist]
    
</div>