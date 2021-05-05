<?php foreach ($sale_main as $item) { ?>
	<input type="hidden" value='<?= $item['company_id'] ?>' name="supplierID" id="supplierID">
	<input type="hidden" value='<?= $item['grand_total'] ?>' name="total_sale" id="total_sale">
<?php } ?>
<table class="table">
	<thead>
		<tr>
			<th>Item Name</th>
			<th>Sale Qty</th>
			<th>Unit Price</th>
			<th>Return Qunatity</th>
		</tr>
	</thead>
	<tbody>
		<?php if (!empty($sale_details)) : foreach ($sale_details as $sdetails) : ?>
				<?php
				if ($sdetails["sales_qty"] > getSalesReturn($sdetails['sales_no'], $sdetails['sales_id'])) {

				?>
					<tr>
						<td><?= $sdetails['item_name']; ?></td>
						<td><?= $sdetails['sales_qty'] - getSalesReturn($sdetails['sales_no'], $sdetails['sales_id']); ?></td>
						<td><?= $sdetails['sales_rate']; ?></td>
						<td><input type="text" class="form-control m-input" name="ReturnQuantity_<?= $sdetails['sales_id']; ?>" id="ReturnQuantity_<?= $sdetails['sales_id']; ?>">
							<button type="button" class="btn btn-info" onclick="returnQty(<?= $sdetails['sales_id']; ?>)" name="return_<?= $sdetails['sales_id'] ?>" id="return_<?= $sdetails['sales_id'] ?>">Return
							</button>
						</td>
					</tr>
					<input type="hidden" name="item_id_<?= $sdetails['sales_id']; ?>" id="item_id_<?= $sdetails['sales_id']; ?>" value="<?php echo $sdetails['item_id']; ?>">
					<input type="hidden" name="quantity_<?= $sdetails['sales_id']; ?>" id="quantity_<?= $sdetails['sales_id']; ?>" value="<?= $sdetails['sales_qty']; ?>">
					<input type="hidden" name="unit_price_<?= $sdetails['sales_id']; ?>" id="unit_price_<?= $sdetails['sales_id']; ?>" value="<?= $sdetails['sales_rate']; ?>">
					<input type="hidden" name="SaleID" id="SaleID" value="<?= $sdetails['sales_no']; ?>">
					<input type="hidden" name="sales_id" id="sales_id_<?= $sdetails['sales_id']; ?>" value="<?= $sdetails['sales_id']; ?>">
			<?php
				}
			endforeach;

		else : ?>
			<p>Data(s) not available.</p>
		<?php endif; ?>

	</tbody>
</table>

<script>
	function returnQty(sales_id) {
		var squantity = $("#quantity_" + sales_id).val();
		var item_id = $("#item_id_" + sales_id).val();
		var unit_price = $("#unit_price_" + sales_id).val();
		var SaleID = $("#SaleID").val();
		var supplierID = $("#supplierID").val();
		var total_sale = $("#total_sale").val();
		var ReturnQuantity = $("#ReturnQuantity_" + sales_id).val();
		var csrfName = '<?php echo $this->security->get_csrf_token_name(); ?>',
			csrfHash = '<?php echo $this->security->get_csrf_hash(); ?>';
		var fd = {
			sales_id: sales_id,
			SaleID: SaleID,
			UnitPrice: unit_price,
			supplierID: supplierID,
			ReturnQuantity: ReturnQuantity,
			total_sale: total_sale,
			item_id: item_id,
			squantity: squantity,
			[csrfName]: csrfHash
		};
		$.ajax({
			"url": "<?php echo site_url('Sales/saleReturn') ?>",
			data: fd,
			type: "POST",
			success: function(res) {
				res = $.parseJSON(res);
				if (res.type === "error") {
					//$("#status_msg").html(res.response);
					toastr.error(res.response)
				} else if (res.type === 'warning') {
					toastr.warning(res.response);
				} else if (res.type === 'success') {
					//$("#status_msg").html(res);
					toastr.success(res.response);
					// $("#product_add").modal('hide');
					$("#myform")[0].reset();
					// toastr.success(res.response);

				}
			},
			error: function(xhr) {
				$("#status_msg").html("Error: - " + xhr.status + " " + xhr.statusText);
			}
		});
	}
</script>