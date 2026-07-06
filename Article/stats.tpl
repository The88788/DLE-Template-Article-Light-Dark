<div class="section-header"><h1 class="section-title">Статистика сайта</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>
<div class="rounded bordered padding-30 mb-4">
<div class="row g-3 mb-4">
<div class="col-md-4"><b>За сутки</b><br><span class="text-muted">{news_day} новостей, {comm_day} комментариев, {user_day} пользователей</span></div>
<div class="col-md-4"><b>За неделю</b><br><span class="text-muted">{news_week} новостей, {comm_week} комментариев, {user_week} пользователей</span></div>
<div class="col-md-4"><b>За месяц</b><br><span class="text-muted">{news_month} новостей, {comm_month} комментариев, {user_month} пользователей</span></div>
</div>
<div class="row g-4">
<div class="col-md-4"><h5>Новости</h5><ul class="list-unstyled"><li>Всего <b class="float-end">{news_num}</b></li><li>Опубликовано <b class="float-end">{news_allow}</b></li><li>На главной <b class="float-end">{news_main}</b></li><li>На модерации <b class="float-end">{news_moder}</b></li></ul></div>
<div class="col-md-4"><h5>Пользователи</h5><ul class="list-unstyled"><li>Всего <b class="float-end">{user_num}</b></li><li>Забанено <b class="float-end">{user_banned}</b></li></ul></div>
<div class="col-md-4"><h5>Комментарии</h5><ul class="list-unstyled"><li>Всего <b class="float-end">{comm_num}</b></li><li><a href="/?do=lastcomments">Посмотреть последние</a></li></ul></div>
</div>
<p class="text-muted mb-0">Общий размер базы данных: {datenbank}</p>
</div>
<div class="section-header"><h3 class="section-title">Лучшие пользователи</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>
<div class="rounded bordered padding-30 table-responsive"><table class="table userstop mb-0">{topusers}</table></div>
