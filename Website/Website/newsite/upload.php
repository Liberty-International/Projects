<?php
include 'core/init.php';
$target= getcwd()."/userfiles/" . company_name_from_company_id($_POST['select_company'])."/";
		
$count=0;
foreach ($_FILES['file']['name'] as $filename) {
	$temp=$target;
	$tmp=$_FILES['file']['tmp_name'][$count];
	$count=$count + 1;
	$temp=$temp.basename($filename);
	move_uploaded_file($tmp,$temp);
	$temp='';
	$tmp='';
	
	// sending out e-mail notification depending on company
	mail_usergroup("New File Upload: ".$filename, 
	"There has been a new file uploaded to your profile on libertyint.com :\n
		File: " . $filename . "\n
	-Liberty International Inc.", company_name_from_company_id($_POST['select_company'])
	);

	header('Location: profile.php?username='. $user_data['username']);	
}


?> 