<div class="section-header"><h1 class="section-title"><i class="icon-plus text-default"></i> {header-title}</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>

<div class="theme-addnews-form bg-light p-5 rounded"><div class="row">

<div class="col-md-6">
<div class="form-group">
<label for="title" class="imp">Заголовок</label>
<input type="text" name="title" id="title" value="{title}" class="wide" required>
</div></div>

[urltag]
<div class="col-md-6">
<div class="form-group">
<label for="alt_name" class="imp">URL новости</label>
<input type="text" name="alt_name" id="alt_name" value="{alt-name}" class="wide">
</div></div>
[/urltag]
    
<div class="col-md-12">
<div class="form-group">
<a href="#" class="btn btn-secondary w-100" onclick="$('.addvote').toggle();return false;"><span class="plus_icon circle"><span>+</span></span> Добавить Опрос</a>
</div></div>

<div class="col-md-6">
<div class="form-group addvote" style="display:none;">
<label for="vote_title" >Заголовок опроса</label>
<input type="text" name="vote_title" value="{votetitle}" class="wide" />
</div></div>

<div class="col-md-6">
<div class="form-group addvote" style="display:none;">
<label for="frage">Вопрос</label>
<input type="text" name="frage" value="{frage}" class="wide" />
</div></div>

<div class="col-md-12">
<div class="form-group addvote" style="display:none;">
<label for="vote_body" >Список ответов</label>
<textarea name="vote_body" rows="5" class="wide" placeholder="Каждая новая строка является новым вариантом ответа">{votebody}</textarea>
</div></div>

<div class="col-md-6">
<div class="form-group">
<label for="category" class="imp">Категория <span class="required">*</span></label>
{category}
</div></div>
			
<div class="col-md-6">
<div class="form-group">
<label for="alt_name">Ключевые слова</label>
<input placeholder="Вводите через запятую" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" class="wide">
</div></div>
    
<div class="col-md-12">
<div class="form-group">
<label for="short_story" class="imp">Краткое описание <span class="required">*</span></label>
[not-wysywyg]
<div class="bb-editor">
{bbcode}
<textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10" class="wide" required>{short-story}</textarea>
</div>
[/not-wysywyg]
{shortarea}
</div></div>

<div class="col-md-12">
<div class="form-group">
<label for="full_story">Полное описание</label>
[not-wysywyg]
<div class="bb-editor">
{bbcode}
<textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="10" class="wide" >{full-story}</textarea>
</div>
[/not-wysywyg]
{fullarea}
</div></div>

<div class="col-md-12">
<div class="form-group">
<div class="xfields-wrap">{xfields}</div>
</div></div>

<div class="col-md-12">
<div class="form-group">
<div class="admin_checkboxs fs-12">{admintag}</div>
</div></div>

[recaptcha]
<div class="col-md-12">
<div class="form-group">
<label for="recaptcha">Защита от спама</label>
{recaptcha}
</div></div>
[/recaptcha]

<div class="col-md-6"><button class="btn btn-default w-100" type="submit" name="add">Отправить</button></div>
<div class="col-md-6"><button class="btn btn-secondary w-100" onclick="preview()" type="submit" name="nview">Предпросмотр</button></div>
    
</div></div>
