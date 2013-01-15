<?php
ob_start ();
include 'core/init.php';
logged_in_redirect();

$theTitle = 'Log In';
if (empty($_POST) === false) {
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if (empty($username) === true || empty($password) === true) {
		$errors[] = 'You need to enter a username and password';
	} else if (user_exists($username) === false) {
		$errors[] = 'We can\'t find that username. Have you registered?';
	} else if (user_active($username) === false) {
		$errors[] = 'Your account has yet to be activated by the system administrator';
	} else {
		
		if (strlen($password) > 32) {
			$errors[] = 'Password too long';
		}
		
		$login = login($username, $password);
		if ($login === false) {
			$errors[] = 'That username/password combination is incorrect';
		} else {
			update_user_metrics($login); // updates last visit and visit count variables
			$_SESSION['user_id'] = $login;
			header('Location: index.php');
			exit();

		}
	}
} else {
	$errors[] = 'No data received';
}
include 'includes/overall/header.php';
?><div id="container"> <!--main content container--><?php
if (empty($errors) === false) {
?>
	<h2>We tried to log you in, but...</h2>
<?php
	echo output_errors($errors);
}
include 'includes/overall/footer.php';
ob_end_flush ();
?>