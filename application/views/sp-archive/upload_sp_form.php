<div class="row sp-text" style="background-color: #4E86BA; padding-top: 2%;">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<h3>Upload Projects</h3>
		<p>Fill all the blanks. The information should be precise and correct.</p>
	</div>
	<div class="col-lg-4"></div>
</div>
<div class="row" style="margin-top: 50px;">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		
		<form method="POST" action="<?php echo base_url(); ?>archive/do_upload" enctype="multipart/form-data">
			<!---<?php echo $error;?> -->
			<input type="file" name="userfile">
			<input type="text" name="title" placeholder="Title" class="form-control"><br>
			<textarea class="form-control" placeholder="Abstract" name="rationale"></textarea><br>

			<!-- https://stackoverflow.com/questions/37538804/dynamic-input-fields-using-codeigniter This can be use for dynamic input form-->
			<select class="js-example-basic-single" name="proponent_a" style="width:100%;">
				<option value="">---Select Proponent A---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
						<select class="js-example-basic-single" name="proponent_b" style="width:100%;">
				<option value="">---Select Proponent B---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
						<select class="js-example-basic-single" name="proponent_c" style="width:100%;">
				<option value="">---Select Proponent C---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<select class="js-example-basic-single" name="adviser" style="width:100%;">
				<option value="">---Select Adviser---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<label class="radio-inline"><input type="radio" name="optradio" value="CAPSTONE_PROJECT"> Capstone</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="SENIOR_THESIS"> Thesis</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="IS_PLAN"> IS Plan</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="OTHERS"> OTHERS</label><br>

			<div class="form-group">
				<label>Add Tags:</label><br/>
				<input type="text" name="tags" placeholder="Tags" class="tm-input form-control tm-input-info"/>
			</div>
			<!--- https://bootstrap-tagsinput.github.io/bootstrap-tagsinput/examples/ -->
			<!-- 
			<p>Tags: </p>
			<input type="text" data-role="tagsinput" <br>
			<br /><br />
			-->
			<input type="submit" name="upload" value="Submit" class="btn button-filled-flat" />
		</form>
	</div>
	<div class="col-lg-4"></div>
</div>
<script>
	$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
	$(".tm-input").tagsManager();
</script>
