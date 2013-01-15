<nav>
    <ul id="nav-bar" class="clearfix">
<!--FULL-WIDTH DROPDOWN MENU-->
     <li class="top-menu full-width-dd">
        <a href="services.php" onmouseover="changetextback();" class="top-menu"><span>Services</span></a>
        <div class="level1 full-width-dd">
            <div class="dd-container">
                <!--TIER ONE-->
                <div class="tier1">
                    <!--COLUMN ONE-->
                    <div class="dd-col1">
                       <ul>              
                          <li><a href="globaltransportation.php" 
							onmouseover="changetext('service_change','For more than 30 years, we have earned the respect and repeat business of an exacting client base through extraordinary service and reliability.');"
							>Global Transportation</a></li></br>
                            
                          <li><a href="clientservicesdivision.php" 
							onmouseover="changetext('service_change','Liberty\'s Client Services Division is completely customer focused, advocating on behalf of our clients and leveraging our experience and our industry contacts to provide best in class service.');"
							>Client Services Division</a></li></br>
                            
                          <li><a href="truckinganddistribution.php" 
							onmouseover="changetext('service_change','Liberty\’s best-in-class distribution, trucking, and warehousing solutions keep your customers satisfied, and your costs under control.');"
							>Trucking & Distribution</a></li></br>
                            
                          <li><a href="valueaddedservices.php" 
							onmouseover="changetext('service_change','We believe that forwarders and brokers must add value to their client\’s supply chain so that logistics is not solely a cost center.');"
							>Value Added Services</a></li></br>
                       </ul>
                    </div>

                    <!--COLUMN TWO-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="exportdivision.php" 
							onmouseover="changetext('service_change','We can assist you in determining the most effective and cost-efficient method of shipping your goods overseas.');"
							>Export Division</a></li></br>
                            
                          <li><a href="compliancedivision.php" 
							onmouseover="changetext('service_change','Regulatory focus on consumer product safety, compliance, and security make it essential to partner with a pro-active and progressive broker.');"
							>Compliance Division</a></li></br>
                            
                          <li><a href="pomanagement.php" 
							onmouseover="changetext('service_change','Liberty leverages state of the art technology to deliver complete, up to the minute visibility of your international purchase orders through our web portal in a package tailored to your needs.');"
							>PO Management</a></li></br>
                            
                          <li><a href="customsclearance.php" 
							onmouseover="changetext('service_change','Liberty views the entry process as a strategic advantage, constantly driving toward an average clearance time of “0” days');"
							>Customs Clearances</a></li></br>
                       </ul>
                    </div>

                    <!--COLUMN THREE-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="marineinsurance.php" 
							onmouseover="changetext('service_change','Liberty provides value added analysis, and review, of your insurance requirements. We work with you to provide door to door coverage for all your international transactions.');"
							>Marine Insurance</a></li></br>
                          <li><a href="bonds.php" 
							onmouseover="changetext('service_change','If Liberty writes your bond, we will stand behind it, and service it in a way our clients have come to expect. As you near your bond renewal date, contact us to write your bond for you.');"
							>Bonds</a></li></br>
                       </ul>
                    </div

                    ><!--COLUMN FOUR-->
                    <div class="dd-col2">
						<ul>
                          <li>
                          	<div id="service_change">
                          	Liberty\’s team believes that our company is about our people.  We are more than a collection of service offerings.  We actively contribute value to our clients\’ businesses.
                          	</div>
                          </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
     </li><!--FULL WIDTH DROPDOWN MENU ENDS-->
     
<!--FULL-WIDTH DROPDOWN MENU-->
     <li class="top-menu full-width-dd">
        <a href="resources.php" class="top-menu" onmouseover="changetextback();"><span>Resources</span></a>
        <div class="level1 full-width-dd">
            <div class="dd-container">
                <!--TIER ONE-->
                <div class="tier1">
                    <!--COLUMN ONE-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="documents.php" 
							onmouseover="changetext('resources_change','Liberty\’s team simplifies the supply chain by providing your business with resources that help you move faster and more efficiently.');"
							>Documents</a></li></br>
                            
                          <li><a href="factsheets.php" 
							onmouseover="changetext('resources_change','Liberty\’s team provides your business with unparalleled resources culled from their extensive experience and training.');"
							>Fact Sheets</a></li></br>
                            
                          <li><a href="industrylinks.php" 
							onmouseover="changetext('resources_change','Helpful internet resources, all in one location, made easy for you.');"
							>Industry Links</a></li></br>
                          <?php if(logged_in()){?><li><a href="clientresources.php" 
							onmouseover="changetext('resources_change','Our team provides your business with unparalleled resources culled from their extensive experience and training.');"
							>Client Resources</a></li></br> 
							<?php }?>
                       </ul>
                    </div>

                    <!--COLUMN TWO-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="governmentsites.php" 
							onmouseover="changetext('resources_change','Here are some great government international trade and compliance web links that we think you\’ll find helpful…');"
							>Government Sites</a></li></br>
                            
                          <li><a href="termsandconditions.php" 
							onmouseover="changetext('resources_change','Liberty International Inc and International Delivery Service  - Terms and Conditions and Privacy Policy');"
							>Terms & Conditions</a></li></br>
                            
                          <li><a href="paymentoptions.php" 
							onmouseover="changetext('resources_change','Liberty accepts company checks and wire transfer payments.  Credit terms are available upon request and review of an appropriately executed credit application and reference check.');"
							>Payment Options</a></li></br>
                       </ul>
                    </div>

                    <!--COLUMN THREE-->
                    <div class="dd-col1">
						<img src="media/resources_menubar.jpg" width="100px" />
                    </div>

                    <!--COLUMN FOUR-->
                    <div class="dd-col2">
						<ul>
                          	<div id="resources_change">
                          	Our team provides your business with unparalleled resources culled from their extensive experience and training. 
                          	</div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
     </li><!--FULL WIDTH DROPDOWN MENU ENDS-->
     
<!--FULL-WIDTH DROPDOWN MENU-->
     <li class="top-menu full-width-dd">
        <a href="aboutus.php" class="top-menu" onmouseover="changetextback();"><span>About Us</span></a>
        <div class="level1 full-width-dd">
            <div class="dd-container">
                <!--TIER ONE-->
                <div class="tier1">
                    <!--COLUMN ONE-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="contactus.php" 
							onmouseover="changetext('aboutus_change','Pawtucket: 401-727-1776;</br></br>Chelsea: 617-884-9700;</br></br>IDS: 401-727-1906');"
							>Contact Us</a></li></br>
                            
                          <li><a href="meetourteam.php" 
							onmouseover="changetext('aboutus_change','Our team\’s experience as logistics & compliance professionals, licensed Brokers & Certified Customs Specialists and former importers and exporters brings unparalleled value to your business.');"
							>Meet Our Team</a></li></br>
                            
                          <li><a href="corporatememberships.php" 
							onmouseover="changetext('aboutus_change','Liberty actively supports the local community and the international trade community that have helped make us a success');"
							>Corporate Memberships</a></li></br>
                            
                          <li><a href="ourservicephilosophy.php" 
							onmouseover="changetext('aboutus_change','Liberty\’s service vision sets us apart.  We don\’t treat you like every other client.  We know your name and we know your business.');"
							>Our Service Philosophy</a></li></br>
                       </ul>
                    </div>

                    <!--COLUMN TWO-->
                    <div class="dd-col1">
                       <ul>
                          <li><a href="testimonials.php" 
							onmouseover="changetext('aboutus_change','Meet just a few of the many clients that recommend our service and refer their colleagues to Liberty.');"
							>Testimonials</a></li></br>
                            
                          <li><a href="certifications.php" 
							onmouseover="changetext('aboutus_change','Liberty is fully licensed by US Customs and Border Protection (CBP), the Federal Maritime Commission (FMC) and the Transportation Security Administration (TSA).');"
							>Certifications</a></li></br>
                            
                          <li><a href="companynews.php" 
							onmouseover="changetext('aboutus_change','Here\'s what\'s happening behind the scenes at Liberty…');"
							>Company News</a></li></br>
                       </ul>
                    </div>

                    <!--COLUMN THREE-->
                    <div class="dd-col1">
						<img src="media/aboutus_menubar.jpg" width="100px" />
                    </div>

                    <!--COLUMN FOUR-->
                    <div class="dd-col2">
						<ul>
                          	<div id="aboutus_change">
                          	In 1982, Nick, Chuck & Ken wanted to create a place where hard working young people would have an opportunity to grow and advance…  Click “About Us” to read Liberty’s story.
                          	</div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
     </li><!--FULL WIDTH DROPDOWN MENU ENDS-->
     
<!--MEMBERS DROPDOWN MENU-->
     <li class="top-menu left-aligned-dd">
		<?php  //if logged in
			$thisdir = getcwd(); 
        if (logged_in() === true) {?>
			  <a href=profile.php?username=<?php echo $user_data['username']; ?> class="top-menu"><span><?php echo $user_data['company']; ?><span></a>
			  <div class="level1 members-dd">
					<div class="dd-container">
						<?php include 'includes/widgets/loggedin.php';?>
					</div>
				</div>
        <?php 
        } else {  // need to still login ?>
			  <a class="top-menu"><span>Log In<span></a>
			  <div class="level1 members-dd">
					<div class="dd-container">
						<?php include 'includes/widgets/login.php'; ?>
					</div>
				</div>
        <?php
        }
        ?>

     </li><!--MEMBERS DROPDOWN MENU ENDS--> 
    </ul>
    <!--MEGA-NAVIGATION BAR ENDS HERE-->
</nav>