[not-logged]<div class="row">
    
<div class="col-lg-6"><div class="form-group mb-3">
<input id="name" name="name" type="text" placeholder="Ваше имя" class="form-control">
</div></div>

<div class="col-lg-6"><div class="form-group mb-3">
<input id="mail" name="mail" type="email" placeholder="Ваш Email" class="form-control">
</div></div>
    
</div>[/not-logged]
    
<div class="form-group mb-3">{editor}</div>

[recaptcha]
<div class="form-group mb-3">
{recaptcha}
</div>
[/recaptcha]

[sec_code]
<div class="form-group mb-3">
{sec_code}
<br><br>
<input type="text" name="sec_code" id="sec_code" placeholder="Код с картинки" required>
</div>
[/sec_code]

<button name="submit" type="submit" id="submit" class="btn btn-default w-100">Отправить</button>
