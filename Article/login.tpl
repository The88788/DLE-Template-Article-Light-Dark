[not-group=5]
<button type="button" class="icon-button" data-bs-toggle="modal" data-bs-target="#modal-user"><span class="icon-user"></span></button>

<div class="modal fade" id="modal-user" tabindex="-1" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered">
<div class="modal-content">

<div class="modal-header border-0 pb-0">
<h6 class="modal-title fw-bold">{login} <span class="text-muted fw-normal" style="font-size:12px">{group}</span></h6>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
</div>

<div class="modal-body pt-2">
<div class="text-center mb-3">
<a href="{profile-link}"><img src="{foto}" style="width:70px;height:70px;object-fit:cover;border-radius:50%" class="border p-1 mb-2" alt="{login}"></a>
</div>
<div class="row g-2">
[admin-link]
<div class="col-12"><a href="{admin-link}" target="_blank" class="btn btn-default w-100">Админпанель</a></div>
[/admin-link]
<div class="col-6"><a href="{addnews-link}" class="btn btn-secondary w-100">Добавить пост</a></div>
<div class="col-6"><a href="{profile-link}" class="btn btn-secondary w-100">Мой профиль</a></div>
<div class="col-6"><a href="{pm-link}" class="btn btn-secondary w-100">Сообщения</a></div>
<div class="col-6"><a href="{favorites-link}" class="btn btn-secondary w-100">Избранное</a></div>
<div class="col-6"><a href="{newposts-link}" class="btn btn-secondary w-100">Новое</a></div>
<div class="col-6"><a href="/index.php?do=lastcomments" class="btn btn-secondary w-100">Комментарии</a></div>
<div class="col-12 mt-1"><a href="{logout-link}" class="btn btn-default w-100">Выйти</a></div>
</div>
</div>

</div>
</div>
</div>
[/not-group]

[group=5]
<button type="button" class="icon-button" data-bs-toggle="modal" data-bs-target="#modal-login"><span class="icon-login"></span></button>

<div class="modal fade" id="modal-login" tabindex="-1" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered">
<div class="modal-content">

<div class="modal-header border-0 pb-0">
<h6 class="modal-title fw-bold">Авторизация</h6>
<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
</div>

<div class="modal-body">
<form name="login-form" id="loginform" method="post">
<div class="form-group">
<label for="login_name">Логин</label>
<input type="text" name="login_name" id="login_name" value="">
</div>
<div class="form-group">
<label for="login_password">Пароль</label>
<input type="password" name="login_password" id="login_password">
</div>
<div class="form-group">
<div class="admin_checkboxs mb-2">
<input type="checkbox" name="login_not_save" id="login_not_save" value="1">
<label for="login_not_save" style="font-weight:400">Не запоминать меня</label>
</div>
<input type="submit" class="btn btn-default w-100" value="Войти">
<input name="login" type="hidden" id="login" value="submit">
</div>
<div class="d-flex justify-content-between mt-2 fs-12">
<a href="{registration-link}">Регистрация</a>
<a href="{lostpassword-link}">Восстановить пароль</a>
</div>
<hr>
<div class="social_login_title">Вход через соцсети</div>
<div class="social_login">
<a class="social_icon_btn vk" href="{vk_url}" title="ВКонтакте"><img src="{THEME}/images/vk.webp" width="48" height="48" alt="ВКонтакте" loading="lazy"></a>
<a class="social_icon_btn yandex" href="{yandex_url}" title="Яндекс ID"><img src="{THEME}/images/yandex.webp" width="48" height="48" alt="Яндекс ID" loading="lazy"></a>
<a class="social_icon_btn google" href="{google_url}" title="Google"><img src="{THEME}/images/google.webp" width="48" height="48" alt="Google" loading="lazy"></a>
</div>
</form>
</div>

</div>
</div>
</div>
[/group]
