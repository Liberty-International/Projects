<?php
include 'core/init.php';
$theTitle = 'Resources';
include 'includes/overall/header.php';
?>
<div id="containerFlush"> <!--main content container-->
	<div class="topBar">
        <img src="media/resources.top.jpg" alt="" width="960" height="160" />
        <div class="subHeading">Resources</div>
	</div>
	
    <table border="0" cellpadding="0" cellspacing="0">
    	<tr>
            <td> 
           		<div id="leftSideText">
                    <strong>Liberty’s Commitment to Education & Innovation</strong>
                    
                    <p>Liberty’s team actively contributes value to our clients’ businesses through value-added innovation and education.  To deliver extraordinary service to your business, we gather the right people and the right resources.</p>  
                    <p>Leverage the information on these pages to educate your team and to streamline your processes:</p>  
                    <ul>
                    <li>Click on the links to various industry resources to learn more about current business requirements and logistics trends</li>
                    <li>Click on the links to various government web sites to get answers to your compliance questions</li>
                    <li>Leverage the sample documents that will save your business time and money</li>
                    <li>Use the fact sheets and “best-in-class” practices to educate your team and save your company time & money</li>
                    </ul>
                    <p>Need a personalized training session at your company’s location about one of the topics listed on these pages?  Contact your Liberty representative to arrange a customized seminar or review. </p>
                    <p>We thank you for the opportunity to share our service and our experience with your business.</p>
                </div>
            </td>
            <td>
            	<div id="rightSideBar">
                	<div id="subPageNav">
                        <div id ="subPageNavTextLeft">
                           <ul>
                              <li><a href="documents.php">Documents</a></li>
                                
                              <li><a href="factsheets.php">Fact Sheets</a></li>
                                
                              <li><a href="industrylinks.php">Industry Links</a></li>
                               <?php if(logged_in()){?><li><a href="clientresources.php">Client Resources</a></li></br> 
							<?php }?>
                           </ul>
                        </div>
                        <div id ="subPageNavTextRight">
                       <ul>
                          <li><a href="governmentsites.php">Government Sites</a></li>
                            
                          <li><a href="termsandconditions.php">Terms & Conditions</a></li>
                            
                          <li><a href="paymentoptions.php">Payment Options</a></li>
                       </ul>
                    	</div>
                    </div>                   
                	<img src="media/resources.right.jpg"width="320"/>
                    
                    <div id="subPageCaption">
                    	Leverage our team and our value-added resources to help solve your supply chain challenges.
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