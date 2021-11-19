<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA PRODUK</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>Part Number <?php echo form_error('part_number') ?></td><td><input type="text" class="form-control" name="part_number" id="part_number" placeholder="Part Number" value="<?php echo $part_number; ?>" /></td>
					</tr>
	
					<tr>
						<td>Part Name</td><td><?php echo cmb_dinamis('part_name', 'tbl_partname', 'partname', 'partname') ?></td>
					</tr>
	
					<tr>
					<td>Size</td><td><?php echo cmb_dinamis('size', 'tbl_size', 'size', 'size') ?></td>
					</tr>
	
					<tr>
					<td>Type</td><td><?php echo cmb_dinamis('type', 'tbl_type', 'type', 'type') ?></td>
					</tr>
	
					<tr>
					<td>Part</td><td><?php echo cmb_dinamis('part', 'tbl_part', 'part', 'part') ?></td>
					</tr>
	
					<tr>
					<td>Material</td><td><?php echo cmb_dinamis('material', 'tbl_material', 'material', 'material') ?></td>
					</tr>
	
					<tr>
						<td width='200'>Weight Core <?php echo form_error('weight_core') ?></td><td><input type="text" class="form-control" name="weight_core" id="weight_core" placeholder="Weight Core" value="<?php echo $weight_core; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Weight Casting <?php echo form_error('weight_casting') ?></td><td><input type="text" class="form-control" name="weight_casting" id="weight_casting" placeholder="Weight Casting" value="<?php echo $weight_casting; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Weight Yield <?php echo form_error('weight_yield') ?></td><td><input type="text" class="form-control" name="weight_yield" id="weight_yield" placeholder="Weight Yield" value="<?php echo $weight_yield; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Weight Mach <?php echo form_error('weight_mach') ?></td><td><input type="text" class="form-control" name="weight_mach" id="weight_mach" placeholder="Weight Mach" value="<?php echo $weight_mach; ?>" /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_part_number" value="<?php echo $id_part_number; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('data_produk') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>