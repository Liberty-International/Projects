<?php
ob_start();
include 'core/init.php';
protect_page();
username_protect();
admin_protect();
$theTitle = 'Profile - '.$_GET['username'] ;
include 'includes/overall/header.php';
?>
<div id="container"> <!--main content container-->
<table id="profileTable" border="0" cellpadding="20" cellspacing="0">
    	<tr>
            <td>
<?php
if (isset($_GET['username']) === true && empty($_GET['username']) === false) {
	$username 		=  $_GET['username'];
	
	if (user_exists($username) === true) {
		$profile_user_id	= user_id_from_username($username);
		$profile_data	= user_data($profile_user_id, 'first_name', 'last_name', 'email', 'company');
?>
		
	<h1><?php echo $profile_data['company']; ?> </h1>
        <p><?php echo $profile_data['first_name']. " ". $profile_data['last_name']. ":  " . $profile_data['email']; ?></p>
	 <p>
        	<?php open_directory($username);
			if(is_admin($profile_user_id) or is_subadmin($profile_user_id)){
				include 'includes/widgets/metrics.php';
			}
		?>
		
	 </p>
	 <p>
	    <a href="http://archive.constantcontact.com/fs051/1102751453546/archive/1102816085897.html" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','media/constant_contact_logo.png',1)"><img src="media/constant_contact_logo1.png" width="240" height="120"  img style="border-style: none;" id="Image1" /></a>
	 </p>
		</td>
		<td>
       	<?php if(is_admin($profile_user_id)){
			include 'includes/widgets/uploader.php';
			include 'includes/widgets/adminUtility.php';
		}elseif(is_subadmin($profile_user_id)){
			include 'includes/widgets/uploader.php'; 
			include 'includes/widgets/subAdminUtility.php';
		}
	
	}else {
		echo 'Sorry, that user doesn\'t exist!';
		}
} else {
	header('Location: index.php');
	exit();
}
?>
	</td>
    </tr>
    <tr>
	<?php //include 'includes/widgets/calculator/calculator.htm'; ?>
    </tr>
    </table>
<?php include 'includes/overall/footer.php'; ob_end_flush(); ?>