<?php
include 'core/init.php';
assignContact($_POST['select_user'],$_POST['select_company']);
header('Location: profile.php?username='. $user_data['username']);
?> 