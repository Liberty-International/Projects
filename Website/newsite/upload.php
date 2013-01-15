<?php
include 'core/init.php';
$target= getcwd()."/userfiles/" . $_POST['select_company']."/";
		
$count=0;
foreach ($_FILES['file']['name'] as $filename) {
	$temp=$target;
	$tmp=$_FILES['file']['tmp_name'][$count];
	$count=$count + 1;
	$temp=$temp.basename($filename);
	move_uploaded_file($tmp,$temp);
	$temp='';
	$tmp='';
	header('Location: profile.php?username='. $user_data['username']);
}
// sending out e-mail notification depending on dropdown menu options

?> 