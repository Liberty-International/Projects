<div class="widget">
	<h2><?php echo $user_data['first_name']." ".$user_data['last_name']; ?></h2>
	<div class="inner"><big>
		<ul>
			<li>
				<b><a href="logout.php">Log out</a></b></br>
			</li>
			<li>
				<a href=profile.php?username=<?php echo $user_data['username']; ?>>Profile</a></br>
			</li>
			<li>
				<a href="changepassword.php">Change password</a></br>
			</li>
			<li>
				<a href="settings.php">Settings</a></br>
			</li>
		</ul></big>
	</div>
</div>