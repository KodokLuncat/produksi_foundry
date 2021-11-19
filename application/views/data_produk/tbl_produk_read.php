
<div class="content-wrapper">
	
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title">DETAIL DATA PRODUK</h3>
			</div>
		
		<table class='table table-bordered'>        

	
			<tr>
				<td>Part Number</td>
				<td><?php echo $part_number; ?></td>
			</tr>
	
			<tr>
				<td>Part Name</td>
				<td><?php echo $part_name; ?></td>
			</tr>
	
			<tr>
				<td>Size</td>
				<td><?php echo $size; ?></td>
			</tr>
	
			<tr>
				<td>Type</td>
				<td><?php echo $type; ?></td>
			</tr>
	
			<tr>
				<td>Part</td>
				<td><?php echo $part; ?></td>
			</tr>
	
			<tr>
				<td>Material</td>
				<td><?php echo $material; ?></td>
			</tr>
	
			<tr>
				<td>Weight Core</td>
				<td><?php echo $weight_core; ?></td>
			</tr>
	
			<tr>
				<td>Weight Casting</td>
				<td><?php echo $weight_casting; ?></td>
			</tr>
	
			<tr>
				<td>Weight Yield</td>
				<td><?php echo $weight_yield; ?></td>
			</tr>
	
			<tr>
				<td>Weight Mach</td>
				<td><?php echo $weight_mach; ?></td>
			</tr>
	
			<tr>
				<td></td>
				<td><a href="<?php echo site_url('data_produk') ?>" class="btn btn-default">Kembali</a></td>
			</tr>
	
		</table>
		</div>
	</section>
</div>