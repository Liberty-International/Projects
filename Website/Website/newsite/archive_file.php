<?php
include 'core/init.php';

$target= getcwd()."/userfiles/" . $_POST['current_company']."/";
$archive= getcwd()."/userfiles/" . $_POST['current_company']."/archive/";
$file_name=$_POST['file_name'];

	if (copy($target.$file_name,$archive.$file_name)) {
 		unlink($target.$file_name);
	}	
	header('Location: profile.php?username='. $_POST['current_username']);

?> 