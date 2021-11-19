
<div class="content-wrapper">
	
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title">DETAIL DATA WORK ORDER DETAIL</h3>
			</div>
		
		<table class='table table-bordered'>        

	
			<tr>
				<td>No WO</td>
				<td><?php echo $no_wo_detail; ?></td>
			</tr>
	
			<tr>
				<td>Type</td>
				<td><?php echo $type_wo; ?></td>
			</tr>
	
			<tr>
				<td>Status</td>
				<td><?php echo $status_wo; ?></td>
			</tr>
	
			<tr>
				<td>Part Number</td>
				<td><?php echo $part_number_wo; ?></td>
			</tr>
	
			<tr>
				<td>Part Name</td>
				<td><?php echo $part_name_wo; ?></td>
			</tr>
	
			<tr>
				<td>Part</td>
				<td><?php echo $part_wo; ?></td>
			</tr>
	
			<tr>
				<td>Size</td>
				<td><?php echo $size_wo; ?></td>
			</tr>
	
			<tr>
				<td>Plan</td>
				<td><?php echo $plan_wo; ?></td>
			</tr>
	
			<tr>
				<td>Actual</td>
				<td><?php echo $actual_wo; ?></td>
			</tr>
	
			<tr>
				<td>OK Produk</td>
				<td><?php echo $ok_wo; ?></td>
			</tr>
	
			<tr>
				<td>NG Produk</td>
				<td><?php echo $ng_wo; ?></td>
			</tr>
	
			<tr>
				<td>Deskripsi</td>
				<td><?php echo $deskripsi_wo; ?></td>
			</tr>
	
			<tr>
				<td></td>
				<td><a href="<?php echo site_url('wo_detail') ?>" class="btn btn-default">Kembali</a></td>
			</tr>
	
		</table>
		</div>
	</section>
</div>