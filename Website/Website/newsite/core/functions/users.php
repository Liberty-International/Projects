<?php

function has_access($user_id, $current_type) {
	$user_id 	= (int)$user_id;
	$current_type	= (int)$current_type;
	(bool)$result = false;

	if((get_type($user_id)== $current_type)){  // same level as subadmin or admin
		$result = true;
	}
	elseif(get_type($user_id)==1){ // admin has all access
		$result=true;
	}
	elseif(get_type($user_id)==2 and $current_type != 1){  // subadmin has all but admin access
		$result=true;
	}
	return $result;
}
function is_admin($user_id){
	$user_id 	= (int)$user_id;
	$type 		= (int)1;
	
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `user_id` = $user_id AND `type` = $type"), 0) == 1) ? true : false;
}
function is_subadmin($user_id){
	$user_id 	= (int)$user_id;
	$type 		= (int)2;
	
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `user_id` = $user_id AND `type` = $type"), 0) == 1) ? true : false;
}

function update_user_metrics($theUserID){
	//updates visit count
		(int)$previousVisits = mysql_result(mysql_query("SELECT `visit_count` FROM `users` WHERE `user_id` =". $theUserID), 0);
			(int)$visits = $previousVisits+1;
		mysql_query("UPDATE `users` SET `visit_count`=". $visits ." WHERE `user_id` =". $theUserID);
	// updates timestamp
		mysql_query("UPDATE `users` SET `last_visit`=now() WHERE `user_id` =". $theUserID);
}

function recover($mode, $email) {
	$mode 		= sanitize($mode);
	$email		= sanitize($email);
	
	$user_data 	= user_data(user_id_from_email($email), 'user_id', 'first_name', 'username');
	
	if ($mode == 'username') {
		email($email, 'Your username', "Hello " . $user_data['first_name'] . ",\n\nYour username is: " . $user_data['username'] . "\n\n-Liberty International");
	} else if ($mode == 'password') {
		$generated_password = substr(md5(rand(999, 999999)), 0, 8);
		change_password($user_data['user_id'], $generated_password);
		
		update_user($user_data['user_id'], array('password_recover' => '1'));
		
		email($email, 'Your password recovery', "Hello " . $user_data['first_name'] . ",\n\nYour new password is: " . $generated_password . "\n\n-Liberty International");
	}
}

function update_user($user_id, $update_data) {
	$update = array();
	array_walk($update_data, 'array_sanitize');
	
	foreach($update_data as $field=>$data) {
		$update[] = '`' . $field . '` = \'' . $data . '\'';
	}
	
	mysql_query("UPDATE `users` SET " . implode(', ', $update) . " WHERE `user_id` = $user_id");
}

function activate($email, $email_code) {
	$email 		= mysql_real_escape_string($email);
	$email_code = mysql_real_escape_string($email_code);
	
	if (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `email` = '$email' AND `email_code` = '$email_code' AND `active` = 0"), 0) == 1) {
		mysql_query("UPDATE `users` SET `active` = 1 WHERE `email` = '$email'");
		return true;
	} else {
		return false;
	}
}
function inactivate($username) {
	$username = mysql_real_escape_string($username);
	mysql_query("UPDATE `users` SET `active` = 0 WHERE `username` = '$username'");
}

function change_password($user_id, $password) {
	$user_id = (int)$user_id;
	$password = '32ER98Dddd83' . md5(md5($password)) . 'KE882d3u940';
	
	mysql_query("UPDATE `users` SET `password` = '$password', `password_recover` = 0 WHERE `user_id` = $user_id");
}

function register_user($register_data) {
	array_walk($register_data, 'array_sanitize');
	$register_data['password'] = '32ER98Dddd83' . md5(md5($register_data['password'])) . 'KE882d3u940';

	$theCompany=$register_data['company'] ;
	mysql_query("INSERT INTO `company` (`name`) VALUES ('". $theCompany ."')");
	
	$register_data['company']= mysql_result((mysql_query("SELECT `company_id` FROM `company` WHERE `name` = '".$theCompany."'")),0);
	
	$fields = '`' . implode('`, `', array_keys($register_data)) . '`';
	$data = '\'' . implode('\', \'', $register_data) . '\'';

	email($register_data['email'], 'Liberty International User Account', "
	There has been a new user registered to libertyint.com with the following information:\n\n
		Company: " . $theCompany . "
		Name: " . $register_data['first_name']." " .$register_data['last_name']. "		
		Username: " . $register_data['username']."
		Email: " . $register_data['email'] . "\n
	Your request is currently being processed by our IT department for approval.  You will recieve another e-mail once your account has been approved.\n\n
	-Liberty International Inc."
	);
	
	mysql_query("INSERT INTO `users` ($fields) VALUES ($data)");
	email('administrator@libertyint.com', 'Activate a new Account', "
	There has been a new user registered to libertyint.com with the following information:\n\n
		Company: " . $theCompany . "
		Name: " . $register_data['first_name']." " .$register_data['last_name']. "		
		Username: " . $register_data['username']."
		Email: " . $register_data['email'] . "\n\n
	Activate the User:  http://libertyint.com/activate.php?email=".$register_data['email']."&email_code=".$register_data['email_code']."\n\n
	-Liberty International Inc."
	);
	// repeat
	email('morosz@libertyint.com', 'Activate a new Account', "
	There has been a new user registered to libertyint.com with the following information:\n\n
		Company: " . $theCompany . "
		Name: " . $register_data['first_name']." " .$register_data['last_name']. "		
		Username: " . $register_data['username']."
		Email: " . $register_data['email'] . "\n\n
	Activate the User:  http://libertyint.com/activate.php?email=".$register_data['email']."&email_code=".$register_data['email_code']."\n\n
	-Liberty International Inc."
	);

	create_directory($theCompany);	
}

function create_directory($company){
	/* creating a new sub folder with username & email code*/ 
	$thisdir = getcwd(); 
	
	/* create a subfolder; make folder writable (CHMOD 0777)*/ 
	if(file_exists ($thisdir ."/userfiles/". trim($company))){
	}
	else{
		if(mkdir($thisdir ."/userfiles/". trim($company) , 0777)) {
			mkdir($thisdir ."/userfiles/". trim($company)."/archive" , 0777); /*making archive folder*/
		} 
		else { 
		   //echo "Failed to create directory..."; 
		} 
	}
}

function open_directory($username){
	if(user_exists($username)){
		
		$company = company_from_username($username);  // add admin rights
		// open this directory 
		$myFilePath = getcwd()."/userfiles/" .trim($company);
		$myDirectory = opendir($myFilePath);
	
		// get each entry
		while($entryName = readdir($myDirectory)) {
			$dirArray[] = $entryName;
		}
		// close directory
		closedir($myDirectory);
		
		//	count elements in array
		$indexCount	= count($dirArray);

		// sort 'em
		sort($dirArray);
		// print 'em
		echo("<TABLE border=0 cellpadding=3 cellspacing=0 id=theFileTable>\n");
		echo("<TR><TH>Private Files (".($indexCount-3)." files)</TH></TR>\n");
		
		// loop through the array of files and echo them all
		for($index=0; $index < $indexCount; $index++) {
			if (substr("$dirArray[$index]", 0, 1) != "."){ // don't list hidden files
			    if($dirArray[$index]!= "archive"){
				echo("<TR><TD><a href='/userfiles/".$company."/".$dirArray[$index]."' target='._blank'>".$dirArray[$index]."</a></td>");
					
				if(is_admin($_SESSION['user_id']) or is_subadmin($_SESSION['user_id'])){
					echo("<td><form action='archive_file.php' method='post'>
							<input type='image' src='media/archive.png' height='15' border='0' padding='0' alt='Archive File'>
							<input type='hidden' name='file_name' value='".$dirArray[$index]."'>
							<input type='hidden' name='current_company' value='".$company."'>
							<input type='hidden' name='current_username' value='".$_GET['username']."'>
					</form></td>");//
					if(is_admin($_SESSION['user_id'])){  //only admins can delete
						echo("<td><form action='delete_file.php' method='post'>
							<input type='image' src='media/deleteIcon.png' height='15' border='0' padding='0' alt='Delete File'>
							<input type='hidden' name='file_name' value='".$dirArray[$index]."'>
							<input type='hidden' name='current_company' value='".$company."'>
							<input type='hidden' name='current_username' value='".$_GET['username']."'>
					</form></td>");
					}
					
				}
			    }
			}
		}
		echo("</TABLE>\n");	
    }
	else{
		echo("That company does not exist in our database");	
	}
}

function recent_user_metrics(){
	  $result = mysql_query("SELECT `username`,`last_visit`, `visit_count` FROM `users` ORDER BY `last_visit` DESC LIMIT 7");
	  if(mysql_num_rows($result)) {
	    echo '<table border=0 cellpadding="2" cellspacing="0" id=theFileTable\n">';
	    echo '<tr style="border-bottom:2px dashed #09337b"><th>Username</th><th>Last Visit</th> <th>Visit Count</th></tr>';
	    while($row = mysql_fetch_row($result)) {
	      echo '<tr style="border-bottom:1px dashed #CB9014">';
		    foreach($row as $cell)
		        echo "<td>$cell</td>";
	      echo '</tr>';
	    }
	    echo '</table><br />';
	  }
}

function top_user_metrics(){
	  $result = mysql_query("SELECT `username`,`visit_count` FROM `users` ORDER BY `visit_count` DESC LIMIT 7");
	  if(mysql_num_rows($result)) {
	    echo '<table border=0 cellpadding="2" cellspacing="0" id=theFileTable\n">';
	    echo '<tr style="border-bottom:2px dashed #09337b"><th>Username</th><th>Visit Count</th></tr>';
	    while($row = mysql_fetch_row($result)) {
	      echo '<tr style="border-bottom:1px dashed #CB9014">';
		    foreach($row as $cell)
		        echo "<td>$cell</td>";
	      echo '</tr>';
	    }
	    echo '</table><br />';
	  }
}

function assignContact($theUsername,$theCompanyID){	
	mysql_query("INSERT INTO `libcontact` VALUES (".user_id_from_username($theUsername).",".$theCompanyID.")");
}


function user_count() {
	return mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `active` = 1"), 0);
}

function user_data($user_id) {
	$data = array();
	$user_id = (int)$user_id;
	
	$func_num_args = func_num_args();
	$func_get_args = func_get_args();
	
	if ($func_num_args > 1) {
		unset($func_get_args[0]);
		
		$fields = '`' . implode('`, `', $func_get_args) . '`';
		$data = mysql_fetch_assoc(mysql_query("SELECT $fields FROM `users` WHERE `user_id` = $user_id"));
		
		return $data;
	}
}

function user_contacts($username){
		
	  $result = mysql_query("SELECT `first_name`,`last_name`, `phone_number`,`email` FROM `users`,`libcontact` WHERE libcontact.company_id = (SELECT users.company FROM `users` WHERE users.user_id=".user_id_from_username($username).")AND libcontact.liberty_user_id=users.user_id AND active=1 ORDER BY `last_name`");
	 if(mysql_num_rows($result)) {
	    echo '<table border=0 cellpadding="5" cellspacing="0" id=theFileTable\n">';
	    echo '<tr style="border-bottom:2px dashed #09337b"><th>First Name</th><th>Last Name</th> <th>Phone Number</th> <th>E-Mail</th> </tr>';
	    while($row = mysql_fetch_row($result)) {
	      echo '<tr style="border-bottom:1px dashed #CB9014">';
		    foreach($row as $cell)
		        echo "<td>$cell</td>";
	      echo '</tr>';
	    }
	    echo '</table><br />';
	  }
}
function admin_contacts($username){
		
	  $result = mysql_query("SELECT `name`,`username`, `phone_number`,`email` FROM `users`,`libcontact`,`company` WHERE libcontact.liberty_user_id=".user_id_from_username($username)." AND libcontact.company_id = company.company_id AND users.company=company.company_id ORDER BY `name` LIMIT 0, 30");
	 if(mysql_num_rows($result)) {
	    echo '<table border=0 cellpadding="5" cellspacing="0" id=theFileTable\n">';
	    echo '<tr style="border-bottom:2px dashed #09337b"><th>Company</th><th>Username</th> <th>Phone Number</th> <th>E-Mail</th> </tr>';
	    while($row = mysql_fetch_row($result)) {
	      echo '<tr style="border-bottom:1px dashed #CB9014">';
		    foreach($row as $cell)
		        echo "<td>$cell</td>";
	      echo '</tr>';
	    }
	    echo '</table><br />';
	  }
}
function logged_in() {
	return (isset($_SESSION['user_id'])) ? true : false;
}

function user_exists($username) {
	$username = sanitize($username);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username'"), 0) == 1) ? true : false;
}

function email_exists($email) {
	$email = sanitize($email);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `email` = '$email'"), 0) == 1) ? true : false;
}

function user_active($username) {
	$username = sanitize($username);
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username' AND `active` = 1"), 0) == 1) ? true : false;
}
function user_allows_email($user_id){
	$user_id = sanitize($user_id);
	return (mysql_result(mysql_query("SELECT `allow_email` FROM `users` WHERE `user_id` = '".$user_id."'"),0) == 1) ? true : false;
}

function user_id_from_username($username) {
	$username = sanitize($username);
	return mysql_result(mysql_query("SELECT `user_id` FROM `users` WHERE `username` = '$username'"), 0, 'user_id');
}
function company_from_username($username) {
	$username = sanitize($username);
	return mysql_result(mysql_query("SELECT `name` FROM `users`,`company` WHERE `username` = '$username' AND `company`= company.company_id"), 0, 'name');
}

function user_id_from_email($email) {
	$email = sanitize($email);
	return mysql_result(mysql_query("SELECT `user_id` FROM `users` WHERE `email` = '$email'"), 0, 'user_id');
}

function email_from_username($username) {
	$username = sanitize($username);
	return mysql_result(mysql_query("SELECT `email` FROM `users` WHERE `username` = '$username'"), 0, 'email');
}

function email_from_user_id($user_id) {
	$user_id = sanitize($user_id);
	return mysql_result(mysql_query("SELECT `email` FROM `users` WHERE `user_id` = 'user_id'"), 0, 'email');
}

function get_type($user_id) {
	$user_id 	= (int)$user_id;

	return mysql_result(mysql_query("SELECT `type` FROM `users` WHERE `user_id` = '$user_id'"), 0);
}

function login($username, $password) {
	$user_id = user_id_from_username($username);
	
	$username = sanitize($username);
	$password = '32ER98Dddd83' . md5(md5($password)) . 'KE882d3u940';
	
	return (mysql_result(mysql_query("SELECT COUNT(`user_id`) FROM `users` WHERE `username` = '$username' AND `password` = '$password'"), 0) == 1) ? $user_id : false;
}
?>