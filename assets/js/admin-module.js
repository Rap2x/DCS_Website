function searchTable(col, inputName, tableName) {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById(inputName);
	filter = input.value.toUpperCase();
	table = document.getElementById(tableName);
	tr = table.getElementsByTagName("tr");

	// Loop through all table rows, and hide those who don't match the search query
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[col];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}

// Filter table results based on the parameter
function filterTable(col, inputName, tableName) {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById(inputName);
	filter = input.value.toUpperCase();
	table = document.getElementById(tableName);
	tr = table.getElementsByTagName("tr");

	// Loop through all table rows, and hide those who don't match the search query
	for (i = 0; i < tr.length; i++) {
		if (th) {
			console.log(document.getElementsByTagName("b")[i].textContent);			
			console.log(input.value.toUpperCase());
			/*
			if (td.toUpperCase() == input.value.toUpperCase()) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
			*/
		}
	}
}

function selectAll(source, checkboxname) {
	checkboxes = document.getElementsByName(checkboxname);
	for (var i in checkboxes) {
    if(checkboxes[i].parentElement.parentElement.style.display == "")
      checkboxes[i].checked = source.checked;
  }
}

// Triggers a modal depending on the value of the parameter select element
function changeTargetModal(select, buttonID) {
  // Get the button element using the buttonID parameter
  var button = document.getElementById(buttonID); 
  // If the value of the select parameter is set to Edit [1]
  if(select.value == 1) {
    // Set the modal to be triggered to the Edit Modal's ID
    button.dataset.target = "#bulkEditModal";
  }
  // Else if the value of the select parameter is set to Remove [2]
  else {
    // Set the modal to be triggered to the Remove Modal's ID
    button.dataset.target = "#bulkRemoveModal";
  }
}

// Sorts the table based on the value of the select element
function sortTable(select, tableID) {
	// Get the table element using the tableID parameter
	var table = document.getElementById(tableID);
	var rows, switching, i, x, y, shouldSwitch;

	// Get the table to be sorted using the tableID parameter
	table = document.getElementById(tableID);
	switching = true;
	/*Make a loop that will continue until
	no switching has been done:*/
	while (switching) {
		//start by saying: no switching is done:
		switching = false;
		rows = table.getElementsByTagName("TR");
		/*Loop through all table rows (except the
			first, which contains table headers):*/
			for (i = 1; i < (rows.length - 1); i++) {
				//start by saying there should be no switching:
				
				// This will contain the condition based on the value of select
				var condition;
				
				// Sort the table by last name [1]
				if(select.value == 1) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TD")[2];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TD")[2];
					// Update the condition
					condition = x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase();
				}
				// Sort the table by reversed last name [1]				
				else if (select.value == 2) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TD")[2];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TD")[2];
					// Update the condition
					condition = x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase();
				}
				else if (select.value == 3) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TH")[1];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TH")[1];
					// Update the condition
					condition = x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase();
				}
				else if (select.value == 4) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TH")[1];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TH")[1];
					// Update the condition
					condition = x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase();
				}
				// Sort the table by reversed last name [1]				
				else if (select.value == 5) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TD")[4];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TD")[4];
					// Update the condition
					condition = x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase();
				}
				// Sort the table by reversed last name [1]				
				else if (select.value == 6) {
					// Set shouldSwitch to false
					shouldSwitch = false;
					// Get the row to be compared
					x = rows[i].getElementsByTagName("TD")[4];
					// Get the row to be compared to the first
					y = rows[i + 1].getElementsByTagName("TD")[4];
					// Update the condition
					condition = x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase();
				}

				//check if the two rows should switch place:
				if (condition) {
					//if so, mark as a switch and break the loop:
					shouldSwitch= true;
					break;
				}
			}
			if (shouldSwitch) {
				/*If a switch has been marked, make the switch
				and mark that a switch has been done:*/
				rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
				switching = true;
			}
		}
	}
