<div class="row">
	<div class="col-sm-12">
		<form method="POST" action="" id="backup">
		<section class="panel">
			<header class="panel-heading">
				<button type="submit" title="Create Backup"
						class="btn btn-primary"><i
						class="fa fa-download"></i> &nbsp; Backup
				</button>

			</header>
			<div class="panel-body">
				<p>
					<b>Total Tables :</b> &nbsp; <?php echo count($dbtables['all']); ?> &nbsp;
					<b>Total Rows:</b> &nbsp; <?php echo $dbtables['totalRows']; ?> &nbsp;
					<b>Total Size:</b> &nbsp; <?php echo $dbtables['totalSize']; ?>
				</p>
				<table class="table table-bordered table-striped">
					<thead>
					<tr>
						<th>
							<input class="all" type="checkbox" value="" id="select_all">
						</th>
						<th>Table Name</th>
						<th>Total Rows</th>
						<th>Size</th>
					</tr>
					</thead>
					<tbody id="tblbody">
					<?php foreach ($dbtables['all'] as $t): ?>
						<tr>
							<td>
								<input type="checkbox" class="icheckbox_flat-green checkboxcls"
									   name="dbtables[]" value="<?php echo $t->name; ?>" checked>
							</td>
							<td><?php echo $t->name; ?></td>
							<td><?php echo $t->rows; ?></td>
							<td><?php echo $t->size; ?></td>
						</tr>
					<?php endforeach; ?>
					</tbody>
					<tfoot>
					<tr>
						<th></th>
						<th class="text-right">Total:</th>
						<th><?php echo $dbtables['totalRows']; ?></th>
						<th><?php echo $dbtables['totalSize']; ?></th>
					</tr>
					</tfoot>
				</table>
				<input type="hidden" name="getbackup" value="1"/>
				<input type=""
			</div>
		</section>
		</form>

	</div>
</div>

<script type="text/javascript">
	var cb, optionSet1;

	$(function () {
		var checkAll = $('input.all');
		var checkboxes = $('input.checkboxcls');

		$('input').iCheck({
			checkboxClass: "icheckbox_flat-green",
		});

		checkAll.on('ifChecked ifUnchecked', function (event) {
			if (event.type == 'ifChecked') {
				checkboxes.iCheck('check');
			} else {
				checkboxes.iCheck('uncheck');
			}
		});

		checkboxes.on('ifChanged', function (event) {
			if (checkboxes.filter(':checked').length == checkboxes.length) {
				checkAll.prop('checked', 'checked');
			} else {
				checkAll.removeProp('checked');
			}
			checkAll.iCheck('update');
		});
	});

	$(".radio").iCheck({
		checkboxClass: "icheckbox_flat-green",
		radioClass: "iradio_square-grey"
	});
</script>

<script type="text/javascript">

	$("#backup").on('submit', (function (e) {
		e.preventDefault();
		toastr.info("Please wait request processing...");
		var fd = new FormData(this);
		$.ajax({
			url: '<?php echo base_url("Generals/create_backup_action") ?>',
			data: fd,
			type: "POST",
			contentType: false,
			processData: false,
			cache: false,
			success: function (res) {
				var res = $.parseJSON(res);
				if (res.msg_type === 'success') {
					toastr.success(res.message);
					setTimeout(function () {
						window.location = res.redirect_link;
					}, 2000);
				} else {
					$("#msg").html(res);
					toastr.error(res.message);
				}
			},
			error: function (xhr) {
				$("#msg").html("Error: - " + xhr.status + " " + xhr.statusText);
			}
		});
	}));
</script>
