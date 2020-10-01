<div class="row">
	<div class="col-sm-12">
		<section class="panel">
			<header class="panel-heading">
			BACKUPS |  <a href='<?=base_url('Generals/create_backup')?>' data-toggle='modal' class='btn btn-info'>
					Add New <i class="fa fa-plus"></i>
				</a>

			</header>
			<div class="panel-body">
				<div class="adv-table">
					<div id="hidden-table-info_wrapper" class="dataTables_wrapper form-inline" role="grid">
						<div class="row-fluid">

						</div>
						<table class="table table-striped- table-bordered table-hover table-checkable" id="table">
							<thead>
							<tr>
								<th>Date</th>
								<th>Database</th>
								<th>Action</th>
							</tr>
							</thead>
							<tbody id="tblbody">
							<?php foreach ($bkups as $bk):
								$data['info'] = get_file_info('./backups/' . $bk); ?>
								<tr>
									<td><?= date("F j, Y H:i:s", $data['info']['date']); ?></td>
									<td><?= $bk; ?></td>
									<td align="center">
										<a href="<?php echo base_url(); ?>Admin/download/?backup=<?php echo $bk; ?>"
										   class="btn btn-primary" title="Download">
											<li class="fa fa-download"></li>
											Download</a>
									</td>
								</tr>
							<?php endforeach; ?>
							</tbody>
							<tfoot>
							<tr>
								<th>Date</th>
								<th>Database</th>
								<th>Action</th>
							</tr>
							</tfoot>
						</table>
					</div>

				</div>
			</div>
		</section>
	</div>
</div>
