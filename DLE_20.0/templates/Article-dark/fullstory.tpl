<article class="post post-single">

<div class="post-header">
<h1 class="title mt-0 mb-3">{title}</h1>
<ul class="meta list-inline mb-0">
<li class="list-inline-item"><i class="icon-user"></i> {author}</li>
<li class="list-inline-item"><i class="icon-folder"></i> {link-category}</li>
<li class="list-inline-item"><i class="icon-calendar"></i> {date=d-M-Y, H:i}</li>
<li class="list-inline-item"><i class="icon-eye"></i> {views}</li>
<li class="list-inline-item"><i class="icon-bubbles"></i> {comments-num}</li>
</ul>
</div>
    
<div class="border-bottom mb-3 pb-3">
[add-favorites]<span class="btn btn-sm btn-warning favorite-btn favorite-btn-add" title="Добавить в закладки"><span class="favorite-mark" aria-hidden="true">&#9825;</span> В закладки</span>[/add-favorites]
[del-favorites]<span class="btn btn-sm btn-warning favorite-btn favorite-btn-active" title="Убрать из закладок"><span class="favorite-mark" aria-hidden="true">&#10084;</span> В закладках</span>[/del-favorites]
[edit]<span class="btn btn-sm btn-primary"><i class="icon-settings"></i> Редактор</span>[/edit]
[complaint]<span class="btn btn-sm btn-dark"><i class="icon-settings"></i> Жалоба</span>[/complaint]
[rating]
[rating-type-1]<div class="d-inline-block align-middle">{rating}</div>[/rating-type-1]
[rating-type-2][rating-plus]<span class="btn btn-sm btn-success"><i class="icon-like"></i> {rating}</span>[/rating-plus][/rating-type-2]
[rating-type-3][rating-plus]<span class="btn btn-sm btn-success"><i class="icon-like"></i></span>[/rating-plus] <span class="btn btn-sm btn-simple">{rating}</span> [rating-minus]<span class="btn btn-sm btn-danger"><i class="icon-dislike"></i></span>[/rating-minus][/rating-type-3]
[rating-type-4]<span class="btn btn-sm btn-simple">{likes}</span> [rating-plus]<span class="btn btn-sm btn-success"><i class="icon-like"></i></span>[/rating-plus] <span class="btn btn-sm btn-simple">{dislikes}</span> [rating-minus]<span class="btn btn-sm btn-danger"><i class="icon-dislike"></i></span>[/rating-minus][/rating-type-4]
[/rating]
</div>
    
<div class="post-content clearfix text-justify">{full-story}</div>
{pages}
[edit-date]<p class="editdate text-muted">Новость отредактировал: <b>{editor}</b> - {edit-date}<br />[edit-reason]Причина: {edit-reason}[/edit-reason]</p>[/edit-date]
[poll]
{poll}
[/poll]

<div class="post-bottom">
<div class="tags-cloud scrSc">{tags}</div>
<div class="mt-3">
<script src="https://yastatic.net/share2/share.js"></script>
<div class="ya-share2" data-curtain data-services="vkontakte,facebook,odnoklassniki,telegram,twitter"></div>
</div>
</div>

</article>

<div class="spacer" data-height="50"></div>
<div class="about-author padding-30 rounded">
<div class="thumb">[profile]<img src="{foto}" alt="{login}" loading="lazy" decoding="async" />[/profile]</div>
<div class="details">
<h6 class="mt-0 mb-0 name text-primary">[profile]{login}[/profile]</h6>
[user-info]<p>{user-info}</p>[/user-info]
[not-user-info]<p>Автор публикации. Подробная информация доступна на странице профиля пользователя.</p>[/not-user-info]
<ul class="list-unstyled list-inline mb-0">
<li class="list-inline-item"><a href="{news}" class="btn btn-light btn-sm"><i class="icon-folder"></i> Новостей: {news-num}</a></li>
<li class="list-inline-item"><a href="{comments-url}" class="btn btn-light btn-sm text-theme"><i class="icon-bubble"></i> Комментариев: {comm-num}</a></li>
<li class="list-inline-item float-end"><a href="{profile-link}" class="btn btn-default btn-sm">Профиль автора <i class="icon-arrow-right"></i></a></li>
</ul>
</div></div>

[related-news]
<div class="spacer" data-height="50"></div>
<div class="section-header"><h3 class="section-title">Похожие новости</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="rounded bordered padding-30">
<ul class="list-unstyled mb-0">
{related-news}
</ul>
</div>
[/related-news]

<div class="spacer" data-height="50"></div>
<div class="section-header">
<h3 class="section-title">Другие новости</h3>
<img src="{THEME}/images/wave.svg" class="wave" alt="wave" />
<div class="slick-arrows-top">
<button type="button" class="carousel-topNav-prev slick-custom-buttons" aria-label="Previous"><i class="icon-arrow-left"></i></button>
<button type="button" class="carousel-topNav-next slick-custom-buttons" aria-label="Next"><i class="icon-arrow-right"></i></button>
</div>
</div>
<div class="swiper post-carousel-twoCol">
<div class="swiper-wrapper">
{custom category="{category-id}" template="modules/custom3" available="global" from="0" limit="6" order="date"}
</div>
</div>
<div class="spacer" data-height="50"></div>

<div class="section-header"><h3 class="section-title">Комментарии ({comments-num})</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="comments bordered padding-30 rounded">
<ul class="comments">
{comments}
</ul>
</div>
<div class="spacer" data-height="50"></div>

<div class="section-header"><h3 class="section-title">Оставить комментарий</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="comment-form rounded bordered padding-30">
{addcomments}
</div>
