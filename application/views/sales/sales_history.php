<?php
foreach ($sales as $results) {

	$id = $results->sales_no;
	@$custlistRow .= "<tr>


                <td>" . $results->sales_no . "
                <td>" . $results->customer_name . "
                <td>" . date('d-M-Y', strtotime($results->sales_date)) . "
                <td>Rs." . $results->sales_amount_total . "</td>
<td>
<a href='show_sales_history/" . $results->sales_no . "' data-toggle='modal' class='btn btn-success'>
<i class='fa fa-pencil-square-o'></i>
                                  Sales History
                              </a><a href='javascript:;' id='edit_sales_return' data-id='" . $results->sales_no . "' class='btn btn-warning'>Sales Return</a> </td>
                ";
}
?>
<!-- page start-->

<section class="panel">
	<header class="panel-heading">
		SALES HISTORY
	</header>
	<div class="panel-body">
		<div class="adv-table editable-table table-responsive">
			<table id="example1" class="table table-striped table-hover table-bordered dataTable" aria-describedby="editable-sample_info">
				<thead>
					<tr role="row">
						<th>Sales Code</th>
						<th>Customer</th>
						<th>Date</th>
						<th>Total</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody role="alert" aria-live="polite" aria-relevant="all">
					<?php if (!empty($custlistRow)) {
						echo $custlistRow;
					} ?>
				</tbody>
			</table>
		</div>
	</div>

</section>
<div class="modal fade" id="sales_return" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title">Sales Return</h4>
			</div>

			<?php $attributes = array('class' => 'form-horizontal group-border hover-stripped', 'id' => 'myform', 'method' => 'post');
			echo form_open('category/update_category', $attributes); ?>
			<div class="modal-body" id="edit_body">

			</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>

<script>
	$("body").on("click", "#edit_sales_return", function() {
		var sales_no = $(this).data('id');
		var csrfName = '<?php echo $this->security->get_csrf_token_name(); ?>',
			csrfHash = '<?php echo $this->security->get_csrf_hash(); ?>';

		try {
			$("#sales_return").modal("show");
			$.ajax({
				url: "<?php echo base_url('Sales/getSalesDataReturn') ?>",
				data: {
					sales_no: sales_no,
					[csrfName]: csrfHash
				},
				type: 'POST',
				cache: false,
				success: function(frm) {
					$("#edit_body").html(frm);
					$("#ReturnQuantity_" + sales_no).val('');
				},
				error: function(xhr) {
					$("#modal_body").html(xhr.status + ' ' + xhr.statusText);
				}
			});
		} catch (e) {
			alert(e.message);
		}
	})
</script>