<div class="section-header"><h1 class="section-title">Контакты</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>

<div class="contact-item bordered rounded d-flex align-items-center mb-4">
<span class="icon icon-phone"></span>
<div class="details"><h6 class="mb-0 mt-0">Телефон</h6><p class="mb-0">+1-202-555-0135</p></div>
</div>
<div class="spacer d-md-none d-lg-none" data-height="30" style="height: 30px;"></div>
               
<div class="contact-item bordered rounded d-flex align-items-center mb-4">
<span class="icon icon-envelope-open"></span>
<div class="details"><h6 class="mb-0 mt-0">E-Mail</h6><p class="mb-0">hello@example.com</p></div>
</div>
<div class="spacer d-md-none d-lg-none" data-height="30" style="height: 30px;"></div>
              
<div class="contact-item bordered rounded d-flex align-items-center mb-4">
<span class="icon icon-map"></span>
<div class="details"><h6 class="mb-0 mt-0">Адрес</h6><p class="mb-0">Россия, г. Москва, ул. Большая, д. 101, офис 55</p></div>
</div>

<div class="bg-light p-5 rounded"><div class="row">

[not-logged]
<div class="col-md-6"><div class="form-group">
<label>Ваше имя <span class="required">*</span></label>
<input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" required>
</div></div>

<div class="col-md-6"><div class="form-group">
<label>Ваш E-mail <span class="required">*</span></label>
<input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" required>
</div></div>
[/not-logged]

<div class="col-md-6"><div class="form-group">
<label>Тема сообщения <span class="required">*</span></label>
<input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" required>
</div></div>

<div class="col-md-6"><div class="form-group">
<label>Получатель <span class="required">*</span></label>
{recipient}
</div></div>

<div class="col-md-12"><div class="form-group">
<label>Сообщение <span class="required">*</span></label>
<textarea placeholder="Сообщение" name="message" id="message" rows="8" class="wide" required></textarea>
</div></div>

[attachments]
<div class="col-md-12"><div class="form-group">
<label for="question_answer">Прикрепить файлы:</label>
<input name="attachments[]" type="file" class="pt-2" multiple>
</div></div>
[/attachments]

[recaptcha]
<div class="col-md-12"><div class="form-group">
<label for="recaptcha">Защита от спама <span class="required">*</span></label>
{recaptcha}
</div></div>
[/recaptcha]

[sec_code]
<div class="col-md-12"><div class="form-group">
<label for="sec_code">Код с картинки <span class="required">*</span></label>
{code}
<br><br>
<input type="text" name="sec_code" id="sec_code" required>
</div></div>
[/sec_code]

<div class="col-md-12"><button class="btn btn-default w-100" type="submit" name="send_btn">Отправить сообщение</button></div>
    
</div></div>