<div class="section-header"><h1 class="section-title"><i class="icon-user text-default"></i> Пользователь - {usertitle}</h1><img src="{THEME}/images/wave.svg" class="wave" alt="wave"></div>

<div class="bg-default p-3 mb-4 rounded"><ul class="usinf fs-13">
<li><div class="ui-c1">Аватар</div> <div class="ui-c2"><img src="{foto}" width="60" height="60" class="profile-avatar" alt="{usertitle}"></div></li>
<li><div class="ui-c1">Логин</div> <div class="ui-c2">{usertitle}</div></li>
<li><div class="ui-c1">Имя</div> <div class="ui-c2">{fullname}[not-fullname]Неизвестно[/not-fullname]</div></li>
<li><div class="ui-c1">Группа</div> <div class="ui-c2">{status}</div></li>
<li><div class="ui-c1">Статус</div> <div class="ui-c2">[online]<span style="color: #70bb39;">Онлайн</span>[/online][offline]Офлайн[/offline]</div></li>
<li><div class="ui-c1">Место жительства</div> <div class="ui-c2">{land}[not-land]Неизвестно[/not-land]</div></li>
<li><div class="ui-c1">Зарегистрирован</div> <div class="ui-c2">{registration}</div></li>
<li><div class="ui-c1">Последняя активность</div> <div class="ui-c2">{lastdate}</div></li>
<li><div class="ui-c1">Кол-во публикаций</div> <div class="ui-c2">{news-num}&nbsp;&nbsp; [ {news} ]</div></li>
<li><div class="ui-c1">Кол-во комментариев</div> <div class="ui-c2">{comm-num}&nbsp;&nbsp; [ {comments} ]</div></li>
<li><div class="ui-c1">О себе</div> <div class="ui-c2">{info}</div></li>
<li><div class="ui-c1">Подпись</div> <div class="ui-c2">{signature}</div></li>
</ul></div>
    
[not-logged]

<h5 class="text-light mb-4 mt-0">Редактировать информацию</h5>

<div class="bg-light p-5 rounded mb-4 profile-edit-form">
    
<div class="form-group">
<label for="fullname">Ваше имя</label>
<input type="text" name="fullname" id="fullname" value="{fullname}" class="wide">
</div>

<div class="form-group">
<label for="email">Ваш e-mail</label>
<input type="email" name="email" id="email" value="{editmail}" class="wide" required>
</div>

<div class="form-group">
<label for="land">Место проживания</label>
<input type="text" name="land" id="land" value="{land}" class="wide">
</div>

<div class="form-group">
<label>Часовой пояс</label>
{timezones}
</div>

<div class="form-group">
<label for="altpass">Старый пароль</label>
<input type="password" name="altpass" id="altpass" class="wide">
</div>

<div class="form-group">
<label for="password1">Новый пароль</label>
<input type="password" name="password1" id="password1" class="wide">
</div>

<div class="form-group">
<label for="password2">Повторите новый пароль</label>
<input type="password" name="password2" id="password2" class="wide">
</div>

<div class="form-group">
<label for="image">Загрузите аватар</label>
<input type="file" name="image" id="image" class="pt-2">
</div>
							
<div class="form-group">
<label for="info">О себе</label>
<textarea name="info" id="info" rows="8" class="wide">{editinfo}</textarea>
</div>

<div class="form-group">
<label for="signature">Подпись</label>
<textarea name="signature" id="signature" rows="8" class="wide">{editsignature}</textarea>
</div>

[group=1,2,3]
<div class="form-group">
<label for="allowed_ip">Блокировка по IP</label>
<textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="8" class="field wide">{allowed-ip}</textarea>
</div>
[/group]

<div class="form-group">
<div class="xfields-wrap">{xfields}</div>
</div>

<div class="form-group fs-12">
<div class="admin_checkboxs mb-2">{twofactor-auth}</div>
<div class="admin_checkboxs mb-2">{news-subscribe}</div>
<div class="admin_checkboxs mb-2">{comments-reply-subscribe}</div>
<div class="admin_checkboxs mb-2">{unsubscribe}</div>
</div>
						
[delete]<a href="#" class="self_delete_link">Удалить аккаунт</a>[/delete]
<button class="btn btn-default w-100" name="submit" type="submit">Сохранить изменения</button>
<input name="submit" type="hidden" id="submit" value="submit">

</div>
    
[/not-logged]
