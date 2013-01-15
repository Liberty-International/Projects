<?php ob_start(); ?>
<?php
include 'core/init.php';
$theTitle = 'Change Password';
protect_page();

if (empty($_POST) === false) {
	$required_fields = array('current_password', 'password', 'password_again');
	foreach($_POST as $key=>$value) {
		if (empty($value) && in_array($key, $required_fields) === true) {
			$errors[] = 'Fields marked with an asterisk are required';
			break 1;
		}
	}

	if ('32ER98Dddd83' . md5(md5($_POST['current_password'])) . 'KE882d3u940' === $user_data['password']) {
		if (trim($_POST['password']) !== trim($_POST['password_again'])) {
			$errors[] = 'Your new passwords do not match';
		} else if (strlen($_POST['password']) < 6) {
			$errors[] = 'Your password must be at least 6 characters';
		}
	} else {
		$errors[] = 'Your current password is incorrect';
	}
}

include 'includes/overall/header.php';

?>
<div id="container"> <!--main content container-->
<h1>Change Password</h1>
<?php
if (isset($_GET['success']) === true && empty($_GET['success']) === true) {
	echo 'Your password has been changed.';
} else {
	
	if (isset($_GET['force']) === true && empty($_GET['force']) === true) {
	?>
		<p>You must change your password now that you've requested.</p>
	<?php
	}
	
	if (empty($_POST) === false && empty($errors) === true) {
		change_password($session_user_id, $_POST['password']);
		header('Location: changepassword.php?success');
	} else if (empty($errors) === false) {
		echo output_errors($errors);
	}
	?>

	<form action="" method="post">
		<ul>
			<li>
				Current password*:<br>
				<input type="password" name="current_password">
			</li>
			<li>
				New password*:<br>
				<input type="password" name="password">
			</li>
			<li>
				New password again*:<br>
				<input type="password" name="password_again">
			</li>
			<li>
				<br><input type="submit" value="Change password">
			</li>
		</ul>
	</form>
<?php
}
include 'includes/overall/footer.php';
?>
<?php ob_end_flush(); ?>