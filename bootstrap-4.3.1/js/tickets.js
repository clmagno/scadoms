$(document).ready(function() {			   
	$('#tickets').DataTable( {	
		"bDeferRender": true,			
		"sPaginationType": "full_numbers",
		"ajax": {
			"url": "function.php",
        	"type": "POST"
		},					
		"columns": [
			{ "data": "Ticket ID" },
			{ "data": "Company" },
			{ "data": "Buyer" },
			{ "data": "Project" },
			{ "data": "Unit Code" },
			{ "data": "Type of Request"},
			{ "data": "Remarks"},
			{ "data": "Status"},
			{"data":"Action"}
			],
		"oLanguage": {
            "sProcessing":     "Processing...",
		    "sLengthMenu": 'To show <select>'+
		        '<option value="10">10</option>'+
		        '<option value="20">20</option>'+
		        '<option value="30">30</option>'+
		        '<option value="40">40</option>'+
		        '<option value="50">50</option>'+
		        '<option value="-1">All</option>'+
		        '</select> Records',    
		    "sZeroRecords":    "No results found.",
		    "sEmptyTable":     "No data available in this table",
		    "sInfo":           "Showing (_START_ to _END_) of a total of _TOTAL_ records",
		    "sInfoEmpty":      "Showing from 0 to 0 of a total of 0 records",
		    "sInfoFiltered":   "(filtering of a total of _MAX_ records)",
		    "sInfoPostFix":    "",
		    "sSearch":         "Search:",
		    "sUrl":            "",
		    "sInfoThousands":  ",",
		    "sLoadingRecords": "Please wait...",
		    "oPaginate": {
		        "sFirst":    "First",
		        "sLast":     "Last",
		        "sNext":     "Next",
		        "sPrevious": "Previous"
		    },
		    "oAria": {
		        "sSortAscending":  ": Activate to sort the column in ascending order",
		        "sSortDescending": ": Activate to sort the column in ascending order"
		    }
        }
	});
});