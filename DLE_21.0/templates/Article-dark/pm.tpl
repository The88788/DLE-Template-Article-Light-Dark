<div class="section-header"><h1 class="section-title"><i class="icon-bubble text-default"></i> Личные сообщения</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>
    
<div class="row mb-4">
<div class="col-md-4"><a class="btn btn-secondary w-100" href="/index.php?do=pm&amp;folder=inbox">Входящие</a></div>
<div class="col-md-4"><a class="btn btn-secondary w-100" href="/index.php?do=pm&amp;folder=outbox">Отправленные</a></div>
<div class="col-md-4"><a class="btn btn-default w-100" href="/index.php?do=pm&amp;doaction=newpm">Написать</a></div>
</div>
    
<div class="fs-13">Папки персональных сообщений заполнены на:</div>
{pm-progress-bar}
<div class="fs-13">{proc-pm-limit}% от лимита ({pm-limit} сообщений)</div>

[pmlist]
<div class="border-top pt-4 mt-4"><h4 class="h6 mb-2">Список сообщений</h4></div>
<div class="mb-0">{pmlist}</div>
[/pmlist]

[newpm]
<div class="border-top pt-4 mt-4"><h4 class="h6 mb-3">Отправить сообщение</h4></div>

<div class="bg-light p-5 rounded"><div class="row">
    
<div class="col-md-6"><div class="form-group">
<label>Получатель <span class="required">*</span></label>
<input type="text" name="name" id="name" value="{author}">
</div></div>
    
<div class="col-md-6"><div class="form-group">
<label>Тема сообщения <span class="required">*</span></label>
<input type="text" name="subj" id="subj" value="{subj}">
</div></div>
    
</div>
    
<div class="form-group">
{editor}
</div>
    
[recaptcha]
<div class="form-group">
<label for="recaptcha">Защита от спама <span class="required">*</span></label>
{recaptcha}
</div>
[/recaptcha]

[sec_code]
<div class="form-group">
<label for="sec_code">Код с картинки <span class="required">*</span></label>
{sec_code}
<br><br>
<input type="text" name="sec_code" id="sec_code" required>
</div>
[/sec_code]

<button name="add" type="submit" id="submit" class="btn btn-default mb-4">Отправить сообщение</button>
    
</div>

[/newpm]
    
[readpm]
<div class="border-top pt-4 mt-4">
<h4 class="h6 mb-3">{subj}</h4>
[messages]
<div class="bg-light p-3 rounded mb-3">
<div class="d-flex justify-content-between mb-2">
<strong>{author}</strong>
<span class="text-muted fs-12">{date}</span>
</div>
<div>{text}</div>
<div class="mt-2 fs-12">
[reply]<a href="#" class="me-2">Ответить</a>[/reply]
[del]<a href="#" class="text-danger">Удалить</a>[/del]
</div>
</div>
[/messages]
<div class="mt-3">
<h5 class="h6 mb-2">Ответить на сообщение</h5>
{editor}
<button class="btn btn-default mt-2" type="submit" name="submit">Отправить</button>
</div>
</div>
[/readpm]