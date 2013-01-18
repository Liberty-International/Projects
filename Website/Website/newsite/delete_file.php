<?php
include 'core/init.php';

$target= getcwd()."/userfiles/" . $_POST['current_company']."/";
$file_name=$_POST['file_name'];
 
unlink($target.$file_name);	

header('Location: profile.php?username='. $_POST['current_username']);

?> 