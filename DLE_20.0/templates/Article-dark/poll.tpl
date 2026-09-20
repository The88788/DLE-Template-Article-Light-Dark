<div class="theme-poll rounded bordered padding-30 mb-4">
<h4 class="mt-0 mb-3">{question}</h4>
<div class="vote_list mb-3">{list}</div>
[voted]<div class="text-muted mb-3">Проголосовало: {votes}</div>[/voted]
[closed]<div class="text-muted mb-3">Опрос закрыт</div>[/closed]
[not-voted]
[not-closed]
<button title="Голосовать" class="btn btn-default rounded me-2" type="submit" onclick="doPoll('vote', '{news-id}'); return false;">Голосовать</button>
<button title="Результаты опроса" class="btn btn-secondary rounded" type="button" onclick="doPoll('results', '{news-id}'); return false;">Результаты</button>
[/not-closed]
[/not-voted]
</div>
