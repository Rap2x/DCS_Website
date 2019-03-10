<div class="row" style="margin-top: 50px">
	<div class="col-lg-4"></div>
	<div class="col-lg-4 text-center">

		<div class="">SP ARCHIVE</div>

		<div class="form-group">
			<form method="GET" action="">
					<input type="text" name="q" id='query' placeholder="Search" class="form-control"><br>
					<input type="submit" name="search" value="Search" class="btn btn-default text-center">
		</div>
	</div>
</div>
<div class="row sp-text" style="background-color: #4E86BA; padding-top: 2%;">
	<div class="col-lg-4"></div>
	<div class="col-lg-4" style="text-align: center; margin-bottom: 15px;">
		<p>NARROW DOWN YOUR SEARCH</p>
		<label class="checkbox-inline">
		<input type="checkbox" name="type1" value="CAPSTONE_PROJECT" checked> Capstone
		</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="type2" value="SENIOR_THESIS" checked> Thesis
			</label>
		<label class="checkbox-inline">
			<input type="checkbox" name="type3" value="IS_PLAN" checked> IS Plan
		</label>
		<label class="checkbox-inline">
			<input type="checkbox" name="type4" value="OTHERS" checked> Others
		</label><br>
		<!-- https://refreshless.com/nouislider/ -->
		<div class="form-group">
			<label for="fromdate">From</label>
				<select class="form-control" id="fromdate">
					<option>2015</option>
					<option>2016</option>
					<option>2017</option>
					<option>2018</option>
				</select>
			<label for="todate">To</label>
				<select class="form-control">
					<option>2018</option>
					<option>2017</option>
					<option>2016</option>
					<option>2015</option>
				</select>
		</div>
	<a class="btn button-filled-flat" href="<?php echo base_url()?>archive/view_upload_form">Add SP</a>
	<?php if(!empty($message)){ echo $message; }?>
	</div>
    </form>
	<div class="col-lg-4"></div>
</div>

<div class="row" style="margin-top: 50px;">
		<?php
		$count=0;
			if($fetch_data->num_rows() >0 ){
				foreach ($fetch_data->result() as $row) {
				$count++;
		?>
	<div class="col-sm-3">
                <div class="card">
                    <div class="card-header card-head2 text-center">
                        <?php echo $row->SP_TITLE?>
                    </div>
                    <div class="card-body card-content text-center">
                    	Proponent:<br>
                    	<?php echo $row->AFirstName;?> <?php echo $row->AMiddleInitial;?>. <?php echo $row->ALastName; ?><br>
                    	<?php echo $row->BFirstName;?> <?php echo $row->BMiddleInitial;?>. <?php echo $row->BLastName; ?><br>
                    	<?php echo $row->CFirstName;?> <?php echo $row->CMiddleInitial;?>. <?php echo $row->CLastName; ?>
                    </div>
                    <div class="card-footer text-center">
                    	<a class="btn button-edit" href="<?php echo base_url()?>archive/update_sp/<?php echo $row->SP_ID;?>">Edit</a>
                    	<a class="btn button-delete" href="<?php echo base_url()?>archive/delete_sp/<?php echo $row->SP_ID; ?>/<?php echo $row->SP_File; ?>">Delete</a>
                    </div>
                </div><br>
    </div>

		<?php
				}
			}else{
				echo "No Data Found.";
			}
		?>
	
</div>
