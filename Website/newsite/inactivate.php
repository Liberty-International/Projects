<?php
include 'core/init.php';
inactivate($_POST['select_user']);
header('Location: profile.php?username='. $user_data['username']);
?> 