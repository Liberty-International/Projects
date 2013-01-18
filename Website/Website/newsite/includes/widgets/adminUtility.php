<br />
<div class="contentBorder">
	<div class="content">
		<div class="uploadForm"><!-- utilities that show up for all admin accounts-->
			
            <div class="adminUtilityWidget">
            <h3>Navigate to User Page</h3>
                <form action="navigate.php" method="POST"><select id="select_user" name="select_user" ><?php echo company_user_list()?></select> <button type="submit" class="uploadButton">Navigate</button></form>
            </div>
			
            <div class="adminUtilityWidget">
            <h3>Change User Password</h3>
                <form action="adminchangepassword.php" method="POST"><select id="select_user" name="select_user" ><?php echo password_company_user_list()?></select> <input type="text" name="newPassword" placeholder="New Password (7+ Length)" id="normalinput">
                <br /><button type="submit" class="uploadButton">Change Password</button>
                </form>
            </div>
            <div class="adminUtilityWidget">
            <h3>Inactivate User Account</h3>
                <form action="inactivate.php" method="POST"><select id="select_user" name="select_user" ><?php echo active_company_user_list()?></select> <button type="submit" class="uploadButton">Inactivate</button></form>
            </div>
	    </div>
            <div class="adminUtilityWidget">
            <h3>Assign Company Contacts</h3>
                <form action="assignContact.php" method="POST">
			Contact:<select id="select_user" name="select_user"><?php echo  contact_list()?></select>
			<p>Company:<select id="select_company" name="select_company" ><?php echo  company_list()?></select><button type="submit" class="uploadButton">Assign Contact to Company</button></p>
		  </form>
            </div>
	    </div>
	</div>
</div>
<script src="core/functions/Scripts/dragdrop.js"></script>
