<?php
include 'core/init.php';
$theTitle = 'Test Page';
include 'includes/overall/header.php';
?>
<div id="containerFlush"> <!--main content container-->
<?php
	$result=mysql_query("SELECT DISTINCT `company` FROM `users` ORDER BY `company` ASC"); 
	
	
	while ($row=mysql_fetch_array($result)) { 
	
		$company=$row["company"]; 
		echo $company. " - "; 
	} 

exit();
?>
	
<?php include 'includes/overall/footer.php'; ?>