
// Tables.js
// ====================================================================
// This file should not be included in your project.
// This is just a sample how to initialize plugins or components.
//
// - ThemeOn.net -



$(document).ready(function() {

	// DATA TABLE
	// =================================================================
	// Require Bootstrap Table
	// http://wenzhixin.net.cn/p/bootstrap-table/docs/index.html
	// =================================================================

	// Initialize bootstrap table
	// =================================================================
	$('#demo-table').bootstrapTable();


});




// FORMAT TABLE
// Use "data-formatter" on HTML to format the display of bootstrap table column.
// =================================================================


// Sameple format for Invoice Column.
function invoiceFormatter(value, row) {
	return '<a href="#" class="btn-link text-dark text-thin" > Order #' + value + '</a>';
}




// Sample Format for User Name Column.
function nameFormatter(value, row) {
	return '<a href="#" class="btn-link" > ' + value + '</a>';
}




// Sample Format for Order Date Column.
function dateFormatter(value, row) {
	var icon = row.id % 2 === 0 ? 'fa-star' : 'fa-user';
	return '<small class="text-muted"><i class="fa fa-clock-o"></i> ' + value + '</span>';
}



// Sample Format for Order Status Column.
function statusFormatter(value, row) {
	var labelColor;
	if (value == "Paid") {
		labelColor = "success";
	}else if(value == "Unpaid"){
		labelColor = "warning";
	}else if(value == "Shipped"){
		labelColor = "info";
	}else if(value == "Refunded"){
		labelColor = "danger";
	}

	var icon = row.id % 2 === 0 ? 'fa-star' : 'fa-user';
	return '<div class="label label-'+ labelColor+' text-lg" style="display:inline-block; width:80%; font-size:1em; max-width:100px; padding:5px"> ' + value + '</div>';
}



// Sample Format for Tracking Number Column.
function trackFormatter(value, row) {
	if (value) return '<i class="fa fa-plane"></i> ' + value;
}



// Sort Price Column
function priceSorter(a, b) {
	a = +a.substring(1); // remove $
	b = +b.substring(1);
	if (a > b) return 1;
	if (a < b) return -1;
	return 0;
}

