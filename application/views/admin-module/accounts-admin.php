<div class="container-fluid">

	<!-- Accounts Display Module -->
	<div class="row text-center">
		<div class="col-lg-12">
			<h4 class="col-lg-12" style="font-family: 'Raleway', sans-serif;">Graduate Student Accounts Table</h4>
			<a href="#" class="mr-sm-5">Alumni</a>
			<a href="#" class="mr-sm-5">Graduate Student</a>
			<a href="#" class="mr-sm-5">Undergraduate Student</a>
			<a href="#" class="mr-sm-5">Faculty</a>
		</div>
	</div>

	<br>

	<div class="col-lg-10 offset-lg-1">
		<div class="row">

			<!-- Bulk actions bar -->
			<div class="col-lg-3">
				<div class="row">
					<label>
						Bulk Actions
					</label>
				</div>
				<div class="row">
					<select class="col-lg-7 form-control custom-select mr-sm-2" onchange="changeTargetModal(this, 'a-bulk-action');" id="inlineFormCustomSelect">
						<option value="1">Edit</option>
						<option value="2">Remove</option>
					</select>
					<button id="a-bulk-action" class="col-lg-4 btn button-filled-flat" data-toggle="modal" data-target="#bulkEditModal">Apply</button>
				</div>
			</div>

			<!-- Filter bar -->
			<div class="col-lg-8 offset-lg-1">
				<div class="row">
					<label class="ml-lg-5">
						Filter Results
					</label>
				</div>
				<div class="row justify-content-end">
					<select class="col-lg-4 form-control custom-select mr-sm-2" onchange="filterTable(1, this.id, 'tableStudents');" id="filter1">
						<option value="All">Show all courses</option>
						<option value="BSCS">Show only BSCS</option>
						<option value="BSIS">Show only BSIS</option>
						<option value="BSIT">Show only BSIT</option>
					</select>
					<select class="col-lg-4 form-control custom-select mr-sm-2" onchange="sortTable(this, 'tableStudents');" id="filter2">
						<option value="1">Sort by lastname ascending</option>
						<option value="2">Sort by lastname descending</option>
						<option value="3">Sort by role ascending</option>
						<option value="4">Sort by role descending</option>
						<option value="5">Sort by year ascending</option>
						<option value="6">Sort by year descending</option>
					</select>
					<input type="text" class="col-lg-3 form-control" id="inlineFormInputGroup" onkeyup="searchTable(2, this.id, 'tableStudents');"
					placeholder="Search">
				</div>
			</div>

		</div>

		<br>

		<!-- Start Form -->
		<form class="row" method="post" action="#">
			<table id="tableStudents" class="table table-hover" width="100%">
				<thead class="table-heading">
					<tr>
						<th>
							<input name="tableCheckbox1" onchange="selectAll(this, this.name);" class="" type="checkbox" value="" id="defaultCheck1">
						</th>
						<th>Role</th>
						<th>First Name</th>
						<th>M.I.</th>
						<th>Last Name</th>
						<th>Course</th>
						<th>Username</th>
						<th>Contact Email</th>
						<th>Contact Number</th>
					</tr>
				</thead>
				<tbody>
					<?php
							/* first we will make sure we have data to display. $users variable is actually the $data['users'] that we sent from the controller to the view... */
							if(!empty($users)) {
								foreach($users as $user) {
									if($user->Account_ID != 0) {
										echo "<tr>";
										echo "	<th>";
										echo "		<input name='tableCheckbox1' type='checkbox' id='defaultCheck1'>";
										echo "	</th>";
										echo "	<th>";
										echo "		<b>Undergraduate Student</b>";
										echo "		<small><br><br><a href='#'><i class='far fa-edit'></i> Edit</a>&nbsp <a href='#'><i class='far fa-trash-alt'></i> Remove</a></small>";
										echo "	</th>";
										echo "	<td>" . $user->Account_LastName . "</td>";									
										echo "	<td>" . $user->Account_FirstName . "</td>";									
										echo "	<td>" . $user->Account_MiddleInitial . "</td>";									
										echo "	<td>" . $user->Course_Name . "</td>";									
										echo "	<td>" . $user->Account_Username . "</td>";									
										echo "	<td>" . $user->Account_ContactEmail . "</td>";									
										echo "	<td>0" . $user->Account_ContactNumber . "</td>";									
										echo "</tr>";									
									}
								}
							}
							?>
				</tbody>
			</table>
	</div>
</div>

<!-- Modals -->

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="bulkRemoveModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="sp-abstract" id="exampleModalLongTitle">Confirm Deletion</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-lg-12">
						<p class="sp-abstract-body">
							Are you sure you want to remove selected accounts?
						</p>
					</div>
				</div>
			</div>
			<div class="modal-footer justify-content-md-center">
				<button type="button" class="btn button-filled-flat">Confirm</button>
				<button type="button" class="btn button-filled-flat">Cancel</button>
			</div>
		</div>
	</div>
</div>

<!-- Edit Modal -->
<div class="modal fade" id="bulkEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="sp-abstract" id="exampleModalLongTitle">Bulk Edit</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form method="post" action="#">
					<div class="row">
						<div class="col-lg-12">
							<p class="sp-abstract-body">
								* Changing the current values will affect all selected rows.
							</p>
							<label class="sp-abstract-body" for="bulkSelectChangeCourse">
								Change Course:
							</label>
							<select class="form-control" name="bulkSelectChangeCourse" id="bulkSelectChangeCourse">
								<option value="0">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -	</option>
								<option value="BSCS">BS Computer Science</option>
								<option value="BSIS">BS Information Systems</option>
								<option value="BSIT">BS Information Technology</option>
							</select>
							<br>
							<label class="sp-abstract-body" for="bulkSelectChangeCourse">
								Change Role:
							</label>
							<select class="form-control" name="bulkSelectRole" id="bulkSelectChangeCourse">
								<option value="0">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -	</option>
								<option value="Alumni">Alumni</option>
								<option value="Graduate">Graduate</option>
								<option value="Undergraduate">Undergraduate</option>
							</select>
						</div>
					</div>
					<div class="modal-footer justify-content-md-center">
						<button type="button" class="btn button-filled-flat">Confirm</button>
						<button type="reset" class="btn button-filled-flat">Cancel</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</form>
