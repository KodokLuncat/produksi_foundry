<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA TBL_WO_DETAIL</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
						<td>No Work Order</td><td><?php echo datalist_dinamis('no_wo_detail', 'tbl_wo', 'no_wo') ?></td>
					</tr>
	
					<tr>
						<td width='200'>Type <?php echo form_error('type_wo') ?></td><td><?php echo form_dropdown('type_wo',array('CORE'=>'CORE','CASTING'=>'CASTING','FINISHING'=>'FINISHING'),$type_wo,array('class'=>'form-control'))?></td>
					</tr>
	
					<tr>
					<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><?php echo form_dropdown('status_wo',array('DONE'=>'DONE','DELAY'=>'DELAY','CANCEL'=>'CANCEL','PROCCESS'=>'PROCCESS'),$status_wo,array('class'=>'form-control'))?></td>
					</tr>
	
					<tr>
						<td>Part Number</td><td><?php echo cmb_dinamis('part_number_wo', 'tbl_partnumber', 'part_number', 'part_number') ?></td>
					</tr>
	
					<tr>
						<td>Part Name</td><td><?php echo cmb_dinamis('part_name_wo', 'tbl_partname', 'partname', 'partname') ?></td>
					</tr>
	
					<tr>
						<td>Part </td><td><?php echo cmb_dinamis('part_wo', 'tbl_part', 'part', 'part') ?></td>
					</tr>
	
					<tr>
						<td>Size </td><td><?php echo cmb_dinamis('size_wo', 'tbl_size', 'size', 'size') ?></td>
					</tr>
	
					<tr>
						<td width='200'>Plan <?php echo form_error('plan_wo') ?></td><td><input type="number" class="form-control" name="plan_wo" id="plan_wo" placeholder="Plan" value="<?php echo $plan_wo; ?>" /></td>
					</tr>
	
					<tr>
						<td width='200'>Actual <?php echo form_error('actual_wo') ?></td><td><input type="number" class="form-control" name="actual_wo" id="actual_wo" placeholder="Actual" value="0" readonly/></td>
					</tr>
	
					<tr>
						<td width='200'>OK Produk <?php echo form_error('ok_wo') ?></td><td><input type="number" class="form-control" name="ok_wo" id="ok_wo" placeholder="OK Produk" value="0" readonly/></td>
					</tr>
	
					<tr>
						<td width='200'>NG Produk <?php echo form_error('ng_wo') ?></td><td><input type="number" class="form-control" name="ng_wo" id="ng_wo" placeholder="NG Produk" value="0" readonly /></td>
					</tr>
	    
					<tr>
						<td width='200'>Deskripsi <?php echo form_error('deskripsi_wo') ?></td>
						<td> <textarea class="form-control" rows="3" name="deskripsi_wo" id="deskripsi_wo" placeholder="Deskripsi" readonly>-</textarea></td>
					</tr>
	
					<tr>
						<td></td>
						<td>
							<input type="hidden" name="id_wo_detail" value="<?php echo $id_wo_detail; ?>" /> 
							<button type="submit" class="btn btn-danger"><i class="fa fa-floppy-o"></i> <?php echo $button ?></button> 
							<a href="<?php echo site_url('wo_detail') ?>" class="btn btn-info"><i class="fa fa-sign-out"></i> Kembali</a>
						</td>
					</tr>
	
				</table>
			</form>
		</div>
	</section>
</div>