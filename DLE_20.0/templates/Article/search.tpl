<div class="section-header"><h1 class="section-title"><i class="icon-magnifier text-default"></i> Поиск по сайту</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>

<div class="bg-light p-4 rounded mb-4">
    
[simple-search]
<div class="form-group"><label>Введите слово(а) для поиска</label>{searchfield}</div>
<div class="row">
<div class="col-md-6"><button type="button" class="btn btn-default w-100" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Найти</button></div>
<div class="col-md-6"><button type="button" class="btn btn-secondary w-100" name="dofullsearch" id="dofullsearch" onclick="javascript:full_submit(1); return false;">Расширенный поиск</button></div>
</div>
[/simple-search]
    
[extended-search]
<div class="row">
    
<div class="col-md-6">
    
<div class="form-group">
<label>Слова для поиска</label>
{searchfield}
</div>
    
<div class="form-group">
<label>Поиск по</label>
{search-area}
</div>
    
<div class="form-group">
<label>Искать статьи с комментариями</label>
<div class="row">
<div class="col-md-6">{news-option}</div>
<div class="col-md-6">{comments-num}</div>
</div>
</div>
    
</div>
    
<div class="col-md-6">

<div class="form-group">
<label>Имя пользователя</label>
<div id="userfield">{userfield}</div>
</div>
    
<div class="form-group">
<label>Поиск по разделам</label>
{category-option}
</div>
    
<div class="form-group">
<label>Временной период</label>
<div class="row">
<div class="col-md-6">{date-option}</div>
<div class="col-md-6">{date-beforeafter}</div>
</div></div>
    
</div></div>

<div class="form-group">
<label>Сортировка результатов</label>
<div class="row">
<div class="col-md-6">{sort-option}</div>
<div class="col-md-6">{order-option}</div>
</div></div>

<div class="row">
<div class="col-lg-4"><button type="button" class="btn btn-default w-100" name="dosearch" id="dosearch" onclick="javascript:list_submit(-1); return false;">Искать</button></div>
<div class="col-lg-4"><button type="button" class="btn btn-secondary w-100" name="doclear" id="doclear" onclick="javascript:clearform('fullsearch'); return false;">Сбросить</button></div>
<div class="col-lg-4"><button type="reset" class="btn btn-secondary w-100" name="doreset" id="doreset">Вернуть</button></div>
</div>

[/extended-search]
    
</div>

[searchmsg]<div class="col-md-12"><div class="alert alert-danger fs-13">{searchmsg}</div></div>[/searchmsg]