<div class="contentBorder">
	<div class="content">
		<div class="halfContent"><img src="media/dragdrop.png" /></div>
		<div class="uploadForm">
			<form id = "upload" class="uploadForm" action="upload.php" method="POST" enctype="multipart/form-data">
			<div>
				<input type="file" id="file" name="file[]" multiple="multiple" />
			</div>

			<div id="submitbutton">
				<button type="submit" class="uploadButton">Upload Files</button>    <select id="select_company" name="select_company" ><?php echo company_list()?></select>
			</div>
			</form>
		</div>
		<div id="file-list">
		</div>
	</div>
</div>
<script src="core/functions/Scripts/dragdrop.js"></script>
