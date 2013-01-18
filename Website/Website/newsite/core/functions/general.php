<?php
function email($to, $subject, $body) {
	mail($to, $subject, $body, 'From: administrator@libertyint.com');
}
function email_user($to, $subject, $body){
	$to=email_from_username($to);
	mail($to, $subject, $body, 'From: administrator@libertyint.com');
}
function mail_usergroup($subject, $body,$company) {
	$query = mysql_query("SELECT `email`, `first_name` FROM `users`,`company` WHERE `active`= 1 AND `allow_email` = 1 AND company.name='".$company."' AND company.company_id=users.company");
	while (($row = mysql_fetch_assoc($query)) !== false) {
		email($row['email'], $subject, "Hello " . $row['first_name'] . ",\n\n" . $body);
	}
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
	$result=mysql_query("SELECT DISTINCT `name`,`company_id` FROM `company` ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$company=$row["name"];
		$company_id =  $row["company_id"];
		$options.="<OPTION VALUE=\"$company_id\">".$company; 
	} 
	return $options;
}

function company_user_list() {
	$result=mysql_query("SELECT `username`,`name` FROM `users`,`company` WHERE NOT `name`='Liberty International' AND users.company = company.company_id ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
		$username=$row['username']; 
		$company=$row['name']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}
function password_company_user_list() {
	$result=mysql_query("SELECT `username`,`name` FROM `users`,`company` WHERE users.company = company.company_id ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
		$username=$row['username']; 
		$company=$row['name']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}
function sub_company_user_list() {  // subadmin version (not to show admin accounts)
	$result=mysql_query("SELECT `username`,`name` FROM `users`,`company` WHERE NOT `type`=1 AND NOT `name`='Liberty International' AND users.company = company.company_id ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
		$username=$row['username']; 
		$company=$row['name']; 
		$options.="<OPTION VALUE=".$username.">".$company." - ". $username; 
	} 
	return $options;
}

function inactive_company_user_list() {
	$result=mysql_query("SELECT `username`,`name` FROM `users`,`company` WHERE `active`=0 AND users.company = company.company_id ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$username=$row['username']; 
		$company=$row['name']; 
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
	$result=mysql_query("SELECT `username`,`name` FROM `users`,`company` WHERE `active`=1 AND users.company = company.company_id ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$username=$row['username']; 
		$company=$row['name']; 
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

function user_activated_email($email){
	email($email, "Liberty International Account Activated", "
	Hello,\n\n 
	Your Liberty International account has been activated by the system admin.  You can now log in at http://www.libertyint.com by scrolling over the 'Log In' menu option, entering your username and password, and clicking the blue Log In button.\n\n
	-Liberty International Inc."
	);
}

function contact_list(){
	$result=mysql_query("SELECT `username`,`first_name`,`last_name` FROM `users`,`company` WHERE `active`=1 AND users.company = company.company_id AND company.name='Liberty International' ORDER BY `name` ASC"); 
	
	$options=""; 
	while ($row=mysql_fetch_array($result)) { 
	
		$username=$row['username']; 
		$first_name=$row['first_name'];
		$last_name=$row['last_name']; 
		$options.="<OPTION VALUE=".$username.">".$first_name." ".$last_name ." - ". $username; 
	} 
	return $options;
}

function array_sanitize(&$item) {
	$item = htmlentities(strip_tags(mysql_real_escape_string($item)));
}
function company_name_from_company_id($company_id) {
	$company_id = sanitize($company_id);
	return mysql_result(mysql_query("SELECT `name` FROM `company` WHERE `company_id` = '$company_id'"), 0, 'name');
}

function sanitize($data) {
	return htmlentities(strip_tags(mysql_real_escape_string($data)));
}

function output_errors($errors) {
	return '<ul><li>' . implode('</li><li>', $errors) . '</li></ul>';
}
?>