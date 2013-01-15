<?php
// ob_start();
include 'core/init.php';
	$theTitle = 'Liberty International - Freight Forwarding';
include 'includes/overall/header.php';
?>
<div id="containerFlush"> <!--main content container-->
    <div id="internalContainer">
        <div id="theMainWindow"> <!--Flash Components and Facebook Plugin-->
                <img src="media/staticPicture.jpg">
        </div>
        <div id="theContactWindow">
        <br /><br />
            <a href="contactus.php" target="_self">Contact Liberty Offices</a><br /><br />
            <a href="mailto:dconboy@libertyint.com" target="_blank">Learn About Our Services</a><br /><br />
            <a href="meetourteam.php" target="_self">Contact Our Team Members</a><br /><br />
            <a href="mailto:dconboy@libertyint.com" target="_blank">Get Help With a Shipment</a>
        </div>
        
        <div id="fbContent">
            <div class="fb-like-box" data-href="http://www.facebook.com/libertyint" data-width="320" data-height="390" data-show-faces="false" data-border-color="#DDDDDD" data-stream="true" data-header="false"></div>
        </div>
    </div>

<?php include 'includes/overall/footer.php'; //ob_end_flush(); ?>