<?php
include 'core/init.php';
$theTitle = 'Services';
include 'includes/overall/header.php';
?>
<div id="containerFlush"> <!--main content container-->
	<div class="topBar">
        <img src="media/services.top.jpg" alt="" width="960" height="160" />
        <div class="subHeading">Services</div>
	</div>
	
    <table border="0" cellpadding="0" cellspacing="0">
    	<tr>
            <td> 
           		<div id="leftSideText">
					<strong>Liberty’s Commitment to Extraordinary Service</strong>
                    </p>
                    <p>
                        Liberty’s team believes that our company is about our people. We are more than a collection of service offerings.
                    </p>
                    <p>
                        We actively contribute value to our clients’ businesses through personalized, customized logistics solutions and through value-added innovation and
                        education.<strong></strong>
                    </p>
                    <p>
                        To deliver extraordinary service to your business, we gather the right people and the right resources.
                    </p>
                    <p>
                        We strive for the greatest possible reliability &amp; quality in our services, to be the standard of comparison in our industry and to be recognized as a
                        company of honesty, integrity, compliance and good citizenship in the community in every way. <strong></strong>
                    </p>
                </div>
            </td>
            <td>
            	<div id="rightSideBar">
                	<div id="subPageNav">
                        <div id ="subPageNavTextLeft">
                           <ul>              
                              <li><a href="globaltransportation.php">Global Transportation</a></li>
                                
                              <li><a href="clientservicesdivision.php">Client Services Division</a></li>
                                
                              <li><a href="truckinganddistribution.php">Trucking & Distribution</a></li>
                                
                              <li><a href="valueaddedservices.php">Value Added Services</a></li>
                              
                              <li><a href="marineinsurance.php">Marine Insurance</a></li>
                           </ul>
                        </div>
                        <div id ="subPageNavTextRight">
                           <ul>
                              <li><a href="exportdivision.php">Export Division</a></li>
                                
                              <li><a href="compliancedivision.php">Compliance Division</a></li>
                                
                              <li><a href="pomanagement.php">PO Management</a></li>
                                
                              <li><a href="customsclearance.php">Customs Clearances</a></li>
                             
                              <li><a href="bonds.php">Bonds</a></li>
                           </ul>
                    	</div>
                    </div>                  
                	<img src="media/services.right.png"width="320"/>
                    
                    <div id="subPageCaption">
                    	Our team works hard to be unsurpassed in our industry in client focus, always insuring our operation first serves our clients.
                    </div>
                    <script>
				unifyHeights("subPageNavTextLeft", "subPageNavTextRight",0,0); // make div's same height
				unifyParent("subPageNav", "subPageNavTextLeft"); // make parent div same height as child
                    </script>
                </div>    
            </td>
    	</tr>
    </table>
    <script>unifyHeights("leftSideText", "rightSideBar",40,0);</script>
<?php include 'includes/overall/footer.php'; ?>