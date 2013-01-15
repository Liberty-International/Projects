<?php
include 'core/init.php';
$theTitle = 'Change Password';
protect_page();
username_protect();
admin_protect();

if(!is_admin(user_id_from_username($_POST['select_user']))){
	change_password(user_id_from_username($_POST['select_user']), $_POST['newPassword']);
}
header('Location: profile.php?username='. $user_data['username']);