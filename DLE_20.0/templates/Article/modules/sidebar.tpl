<aside class="col-lg-4">
<div class="sidebar">
    
<div class="widget post-tabs rounded bordered">
<ul class="nav nav-tabs nav-pills nav-fill" id="postsTab" role="tablist">
<li class="nav-item" role="presentation"><button aria-controls="popular" aria-selected="true" class="nav-link active" data-bs-target="#popular" data-bs-toggle="tab" id="popular-tab" role="tab" type="button">Популярное</button></li>
<li class="nav-item" role="presentation"><button aria-controls="recent" aria-selected="false" class="nav-link" data-bs-target="#recent" data-bs-toggle="tab" id="recent-tab" role="tab" type="button">Случайное</button></li>
</ul>
<div class="tab-content" id="postsTabContent">
<div class="lds-dual-ring"></div>
<div aria-labelledby="popular-tab" class="tab-pane fade show active" id="popular" role="tabpanel">
{custom category="1" template="modules/topnews" available="global" from="0" limit="4" order="reads"}
</div>
<div aria-labelledby="recent-tab" class="tab-pane fade" id="recent" role="tabpanel">
{custom category="1" template="modules/topnews" available="global" from="0" limit="4" order="rand"}
</div>
</div></div>

<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Комментарии</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content">
{customcomments template="modules/lastcomments" available="global" from="0" limit="3" order="date"}
</div></div>

<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Категории сайта</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content">{catmenu}</div>
</div>

<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Подписка на новости</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content">
<span class="newsletter-headline text-center mb-3">Присоединяйтесь к 70 000 подписчиков!</span>
<form>
<div class="mb-2"><input class="form-control w-100 text-center" placeholder="Ваш Email…" type="email"></div>
<button class="btn btn-default btn-full" type="submit">Подписаться</button>
</form>
<span class="newsletter-privacy text-center mt-3">Подписываясь, Вы соглашаетесь с нашей <a href="#">политикой конфиденциальности</a></span>
</div></div>

<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Мы в соцсетях</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content text-center">
<ul class="social-icons list-unstyled list-inline mb-0" style="font-size:22px;">
<li class="list-inline-item"><a href="#"><i class="si si-facebook"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-x"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-instagram"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-telegram"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-vk"></i></a></li>
<li class="list-inline-item"><a href="#" title="MAX"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 720 720" style="height:1em;width:auto;vertical-align:-0.2em;fill:currentColor"><path d="M350.4,9.6C141.8,20.5,4.1,184.1,12.8,390.4c3.8,90.3,40.1,168,48.7,253.7,2.2,22.2-4.2,49.6,21.4,59.3,31.5,11.9,79.8-8.1,106.2-26.4,9-6.1,17.6-13.2,24.2-22,27.3,18.1,53.2,35.6,85.7,43.4,143.1,34.3,299.9-44.2,369.6-170.3C799.6,291.2,622.5-4.6,350.4,9.6h0ZM269.4,504c-11.3,8.8-22.2,20.8-34.7,27.7-18.1,9.7-23.7-.4-30.5-16.4-21.4-50.9-24-137.6-11.5-190.9,16.8-72.5,72.9-136.3,150-143.1,78-6.9,150.4,32.7,183.1,104.2,72.4,159.1-112.9,316.2-256.4,218.6h0Z"/></svg></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-tiktok"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-threads"></i></a></li>
<li class="list-inline-item"><a href="#"><i class="si si-youtube"></i></a></li>
</ul>
</div></div>

<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Облако тэгов</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content tags-cloud">{tags}</div>		
</div>
    
<div class="widget rounded">
<div class="widget-header text-center"><h3 class="widget-title">Календарь</h3><img src="{THEME}/images/wave.svg" class="wave" alt="wave" /></div>
<div class="widget-content">{calendar}</div>		
</div>
    
<div class="widget rounded">
{vote}	
</div>

</div></aside>
