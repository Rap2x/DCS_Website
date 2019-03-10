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
				<select class="form-control" id="fromdate" name="from">
					<option>2015</option>
					<option>2016</option>
					<option>2017</option>
					<option>2018</option>
				</select>
			<label for="todate">To</label>
				<select class="form-control" name="to">
					<option>2018</option>
					<option>2017</option>
					<option>2016</option>
					<option>2015</option>
				</select>
		</div>
	</div>
    </form>
	<div class="col-lg-4"></div>
</div>

<div class="row" style="margin-top: 50px; margin-left: 5px; margin-right: 5px;">
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
                        <button type="button" class="btn button-filled-flat" data-toggle="modal" data-target="#myModal<?php echo $count ?>">
                            VIEW ABSTRACT
                        </button>
                    </div>
                </div><br>
    </div>
    <?php echo "<div id='pagination'>" . $this->pagination->create_links(). "</div>" ?>
        <div class="modal fade" id="myModal<?php echo $count?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="sp-abstract" id="exampleModalLongTitle">ABSTRACT</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <h5 class="sp-thumbnail-title"><?php echo $row->SP_TITLE; ?></h5>
                            <p class="sp-thumbnail-proponents">
                            	<!-- Proponent-->
                            </p>
                            <p class="sp-thumbnail-advisers">
                                Adviser: 	<?php echo $row->ADFirstName." "; ?>
                                			<?php echo $row->ADMiddleInitial.". "; ?>
                                			<?php echo $row->ADLastName; ?>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <p class="sp-abstract-body">
                                <!-- Rationale-->
                                <?php echo $row->SP_RATIONALE; ?>
                            </p>
                            <p class="sp-abstract-label">Keywords: </p>
                            <span class="sp-abstract-keywords"><?php echo $row->Tag; ?></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-md-center">
                    <a href="<?php echo base_url()?>sp_archive/<?php echo $row->SP_File; ?>.pdf" class="button button-filled-flat" target="_blank">VIEW FULL DOCUMENT</a>
                </div>
            </div>
        </div>
    </div>

		<?php
				}
			}else{
				echo "No Data Found.";
			}
		?>
	
</div>
