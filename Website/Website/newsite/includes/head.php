<head>
<?
require 'core/functions/homepageScript.php';
require 'core/functions/scripts.php';
?>
	<title><?php  echo $theTitle ?></title>
    <link rel="icon" href="media/favicon.ico">
   	<meta charset="UTF-8">
   	<?php
		 /* if (get_cfg_var('browscap'))
		$browser = get_browser(null, true); //If available, use PHP native function
		else
		{
		require_once($_SERVER['DOCUMENT_ROOT']."/includes/php-local-browscap.php");
		$browser=get_browser_local(null, true);
		}
 		$browser = get_browser();
		if($browser->browser == 'IE' && $browser->majorver == 6) {  // INTERNET EXPLORER 6 ?>
            <link rel="stylesheet" href="css/nav-IE6.css" />
            
        <?php echo "ie6";
        }
        elseif($browser->browser == 'IE' && $browser->majorver == 7) {// INTERNET EXPLORER 7 ?>
            <link rel="stylesheet" href="css/nav-IE7.css" />
        <?php echo "ie7";
        }
        elseif($browser->browser == 'IE' && $browser->majorver == 7) {// INTERNET EXPLORER 8 ?>
            <link rel="stylesheet" href="css/nav-IE8.css" />
        <?php echo "ie8";
        }*/?>

    <link rel="stylesheet" href="css/screen.css">

    <!--[if lt IE 9]>
	<script src="core/functions/Scripts/modernizr.js"></script>
	<!--script src="core/functions/Scripts/html5shiv.js"script-->
	<!--script src="core/functions/Scripts/PIE.js"script-->
    <![endif]-->

</head>