<?php
function email($to, $subject, $body) {
	mail($to, $subject, $body, 'From: administrator@libertyint.com');
}

function logged_in_redirect() {
	if (logged_in() === true) {
		header('Location: index.php');
		exit();
	}
}
function protect_page() {
	if (logged_in() === false) {
		header('Location: protected.php');
		exit();
	}
}

function company_list() {
	$result=mysql_query("SELECT DISTINCT `company` FROM `users` ORDER BY `company` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$company=$row["company"]; 
		$options.="<OPTION VALUE=\"$company\">".$company; 
	} 
	return $options;
}

function company_user_list() {
	$result=mysql_query("SELECT `username`,`company` FROM `users` ORDER BY `company` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
		$username=$row['username']; 
		$company=$row['company']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}
function inactive_company_user_list() {
	$result=mysql_query("SELECT `username`,`company` FROM `users` WHERE `active` =0 ORDER BY `company` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$username=$row['username']; 
		$company=$row['company']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}

function archive_file($folderLocation, $fileIndex){
	if (copy($folderLocation.$fileIndex,$folderLocation."archive/".$fileIndex)) {
  		unlink($folderLocation.$fileIndex);
	}
}


function active_company_user_list() {
	$result=mysql_query("SELECT `username`,`company` FROM `users` WHERE `active` =1 ORDER BY `company` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$username=$row['username']; 
		$company=$row['company']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}

function admin_protect() {
	global $user_data;
	if (has_access($user_data['user_id'], get_type(user_id_from_username($_GET['username']))) === false) {
		header('Location: index.php');
		exit();
	}
}

function username_protect(){
	global $user_data;
	if ($_GET['username'] == $user_data['username'] || has_access($user_data['user_id'], 1) == true || has_access($user_data['user_id'], 2) == true) {
	}
	else{
		header('Location: index.php');	
	}
}

function array_sanitize(&$item) {
	$item = htmlentities(strip_tags(mysql_real_escape_string($item)));
}

function sanitize($data) {
	return htmlentities(strip_tags(mysql_real_escape_string($data)));
}

function output_errors($errors) {
	return '<ul><li>' . implode('</li><li>', $errors) . '</li></ul>';
}
?>