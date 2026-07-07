<div class="section-header"><h1 class="section-title">Восстановление пароля</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>

<div class="bg-light p-5 rounded">
    
<div class="form-group">
<label>Логин или E-mail <span class="required">*</span></label>
<input type="text" name="lostname" id="lostname" placeholder="Логин или E-mail">
</div>
		
[recaptcha]
<div class="form-group">
<label>Защита от спама <span class="required">*</span></label>
{recaptcha}
</div>
[/recaptcha]

[sec_code]
<div class="form-group">
<label for="sec_code">Код с картинки <span class="required">*</span></label>
{code}
<br><br>
<input type="text" name="sec_code" id="sec_code" required>
</div>
[/sec_code]

<button class="btn btn-default w-100" name="submit" type="submit">Восстановить</button>
    
</div>