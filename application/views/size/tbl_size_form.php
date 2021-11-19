<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA TBL_SIZE</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td width='200'>Size <?php echo form_error('size') ?></td><td><input type="text" class="form-control" name="size" id="size" placeholder="Size" value="<?php echo $size; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Dn <?php echo form_error('dn') ?></td><td><input type="text" class="form-control" name="dn" id="dn" placeholder="Dn" value="<?php echo $dn; ?>" /></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_size" value="<?php echo $id_size; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('size') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>