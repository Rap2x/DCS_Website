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
		
		<form method="POST" action="<?php echo base_url()?>/archive/do_edit" >
			<!---<?php echo $error;?> -->
			<label for="title">Title</label>
			<input type="text" name="title" placeholder="Title" class="form-control" value="<?php echo $curr_data->SP_Title; ?>" id='title'><br>
			<input type="hidden" name="sp_id" value=<?php echo $curr_data->SP_ID?>>

			<label for="abstract">Abstract</label>
			<textarea class="form-control" placeholder="Abstract" name="rationale" rows="4" id="abstract"><?php echo $curr_data->SP_Rationale; ?></textarea><br>

			<!-- https://stackoverflow.com/questions/37538804/dynamic-input-fields-using-codeigniter This can be use for dynamic input form-->
			<label for="propa">Proponent A</label>
			<select class="js-example-basic-single" name="proponent_a" style="width:100%;" id="propa">
				<option value="">---Select Proponent A---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?> <?php if($row->Account_ID == $curr_data->Proponent_A){echo "selected='selected'";}?>> <?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<label for="propb">Proponent B</label>
			<select class="js-example-basic-single" name="proponent_b" style="width:100%;" id="propb">
				<option value="">---Select Proponent B---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?> <?php if($row->Account_ID == $curr_data->Proponent_B){echo "selected='selected'";}?>> <?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<label for="propc">Proponent C</label>
			<select class="js-example-basic-single" name="proponent_c" style="width:100%;" id="propc">
				<option value="">---Select Proponent C---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?> <?php if($row->Account_ID == $curr_data->Proponent_C){echo "selected='selected'";}?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<label for="adviser">Adviser</label>
			<select class="js-example-basic-single" name="adviser" style="width:100%;" id="adviser">
				<option value="">---Select Adviser---</option>
				<?php 
					if($fetch_account->num_rows() > 0){
						foreach ($fetch_account->result() as $row) {
				?>

				<option value=<?php echo $row->Account_ID;?> <?php if($row->Account_ID == $curr_data->Adviser){echo "selected='selected'";}?>><?php echo $row->Account_FirstName." ". $row->Account_MiddleInitial.". ".$row->Account_LastName;?></option>

				<?php 
						}
					}
				?>
			</select><br><br>
			<label class="radio-inline"><input type="radio" name="optradio" value="CAPSTONE_PROJECT" <?php if($curr_data->SP_Type == 'CAPSTONE_PROJECT'){echo 'checked';}?>> Capstone</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="SENIOR_THESIS" <?php if($curr_data->SP_Type == 'SENIOR_THESIS'){echo 'checked';}?>> Thesis</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="IS_PLAN" <?php if($curr_data->SP_Type == 'IS_PLAN'){echo 'checked';}?>> IS Plan</label>
			<label class="radio-inline"><input type="radio" name="optradio" value="OTHERS" <?php if($curr_data->SP_Type == 'OTHERS'){echo 'checked';}?>> OTHERS</label><br>

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

$(".js-example-tags").select2({
  tags: true
});

$('select').select2();


<?php 
	foreach ($sp_tags->result() as $row) {
?>
	$(".tm-input").tagsManager('pushTag',<?php echo "'".$row->Tag_Name."'"; ?>);
<?php
	}
?>

</script>
