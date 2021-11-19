<div class="content-wrapper">
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title"><?php echo strtoupper($button) ?> DATA WORK ORDER DETAIL</h3>
			</div>
			<form action="<?php echo $action; ?>" method="post">
			
				<table class='table table-bordered'>
	
					<tr>
					<td width='200'>No Work Order <?php echo form_error('no_wo_detail') ?></td><td><input type="text" class="form-control" name="no_wo_detail" id="no_wo_detail" placeholder="No Work Order" value="<?php echo $no_wo_detail; ?>" readonly /></td>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>Type <?php echo form_error('type_wo') ?></td><td><?php echo form_dropdown('type_wo',array('CORE'=>'CORE','CASTING'=>'CASTING','FINISHING'=>'FINISHING'),$type_wo,array('class'=>'form-control'))?></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>Type <?php echo form_error('type_wo') ?></td><td><?php echo form_dropdown('type_wo',array('CORE'=>'CORE','CASTING'=>'CASTING','FINISHING'=>'FINISHING'),$type_wo,array('class'=>'form-control'))?></td>
					<?php } else { ?>
						<td width='200'>Type <?php echo form_error('type_wo') ?></td><td><input type="text" class="form-control" name="type_wo" id="type_wo" placeholder="Type" value="<?php echo $type_wo; ?>" readonly /></td>
					<?php }; ?>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><?php echo form_dropdown('status_wo',array('DONE'=>'DONE','DELAY'=>'DELAY','CANCEL'=>'CANCEL','PROCCESS'=>'PROCCESS'),$status_wo,array('class'=>'form-control'))?></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><?php echo form_dropdown('status_wo',array('DONE'=>'DONE','DELAY'=>'DELAY','CANCEL'=>'CANCEL','PROCCESS'=>'PROCCESS'),$status_wo,array('class'=>'form-control'))?></td>
					<?php } else if($this->session->userdata('id_user_level')=='3'){ ?>
						<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><?php echo form_dropdown('status_wo',array('DONE'=>'DONE','DELAY'=>'DELAY','CANCEL'=>'CANCEL','PROCCESS'=>'PROCCESS'),$status_wo,array('class'=>'form-control'))?></td>
					<?php } else if($this->session->userdata('id_user_level')=='4'){ ?>
						<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><?php echo form_dropdown('status_wo',array('DONE'=>'DONE','DELAY'=>'DELAY','CANCEL'=>'CANCEL','PROCCESS'=>'PROCCESS'),$status_wo,array('class'=>'form-control'))?></td>
					<?php } else { ?>
						<td width='200'>Status <?php echo form_error('status_wo') ?></td><td><input type="text" class="form-control" name="status_wo" id="status_wo" placeholder="Status" value="<?php echo $status_wo; ?>" readonly /></td>
					<?php }; ?>	
					</tr>
	
					<tr>
						<td width='200'>Part Number <?php echo form_error('part_number_wo') ?></td><td><input type="text" class="form-control" name="part_number_wo" id="part_number_wo" placeholder="Part Number" value="<?php echo $part_number_wo; ?>" readonly /></td>
					</tr>
	
					<tr>
					<td width='200'>Part Name <?php echo form_error('part_name_wo') ?></td><td><input type="text" class="form-control" name="part_name_wo" id="part_name_wo" placeholder="Part Name" value="<?php echo $part_name_wo; ?>" readonly /></td>
					</tr>
	
					<tr>
						<td width='200'>Part <?php echo form_error('part_wo') ?></td><td><input type="text" class="form-control" name="part_wo" id="part_wo" placeholder="Part" value="<?php echo $part_wo; ?>" readonly /></td>
					</tr>
	
					<tr>
						<td width='200'>Size <?php echo form_error('size_wo') ?></td><td><input type="text" class="form-control" name="size_wo" id="size_wo" placeholder="Size" value="<?php echo $size_wo; ?>" readonly /></td>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>Plan <?php echo form_error('plan_wo') ?></td><td><input type="number" class="form-control" name="plan_wo" id="plan_wo" placeholder="Plan" value="<?php echo $plan_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>Plan <?php echo form_error('plan_wo') ?></td><td><input type="number" class="form-control" name="plan_wo" id="plan_wo" placeholder="Plan" value="<?php echo $plan_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='3'){ ?>
						<td width='200'>Plan <?php echo form_error('plan_wo') ?></td><td><input type="number" class="form-control" name="plan_wo" id="plan_wo" placeholder="Plan" value="<?php echo $plan_wo; ?>" /></td>
					<?php } else { ?>
						<td width='200'>Plan <?php echo form_error('plan_wo') ?></td><td><input type="number" class="form-control" name="plan_wo" id="plan_wo" placeholder="Plan" value="<?php echo $plan_wo; ?>" readonly /></td>
					<?php }; ?>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>Actual <?php echo form_error('actual_wo') ?></td><td><input type="number" class="form-control" name="actual_wo" id="actual_wo" placeholder="Actual" value="<?php echo $actual_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>Actual <?php echo form_error('actual_wo') ?></td><td><input type="number" class="form-control" name="actual_wo" id="actual_wo" placeholder="Actual" value="<?php echo $actual_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='5'){ ?>
						<td width='200'>Actual <?php echo form_error('actual_wo') ?></td><td><input type="number" class="form-control" name="actual_wo" id="actual_wo" placeholder="Actual" value="<?php echo $actual_wo; ?>" /></td>
					<?php } else { ?>
						<td width='200'>Actual <?php echo form_error('actual_wo') ?></td><td><input type="number" class="form-control" name="actual_wo" id="actual_wo" placeholder="Actual" value="<?php echo $actual_wo; ?>" readonly /></td>
					<?php }; ?>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>OK Produk <?php echo form_error('ok_wo') ?></td><td><input type="number" class="form-control" name="ok_wo" id="ok_wo" placeholder="OK Produk" value="<?php echo $ok_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>OK Produk <?php echo form_error('ok_wo') ?></td><td><input type="number" class="form-control" name="ok_wo" id="ok_wo" placeholder="OK Produk" value="<?php echo $ok_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='5'){ ?>
						<td width='200'>OK Produk <?php echo form_error('ok_wo') ?></td><td><input type="number" class="form-control" name="ok_wo" id="ok_wo" placeholder="OK Produk" value="<?php echo $ok_wo; ?>" /></td>
					<?php } else { ?>
						<td width='200'>OK Produk <?php echo form_error('ok_wo') ?></td><td><input type="number" class="form-control" name="ok_wo" id="ok_wo" placeholder="OK Produk" value="<?php echo $ok_wo; ?>" readonly /></td>
					<?php }; ?>
					</tr>
	
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>NG Produk <?php echo form_error('ng_wo') ?></td><td><input type="number" class="form-control" name="ng_wo" id="ng_wo" placeholder="NG Produk" value="<?php echo $ng_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>NG Produk <?php echo form_error('ng_wo') ?></td><td><input type="number" class="form-control" name="ng_wo" id="ng_wo" placeholder="NG Produk" value="<?php echo $ng_wo; ?>" /></td>
					<?php } else if($this->session->userdata('id_user_level')=='5'){ ?>
						<td width='200'>NG Produk <?php echo form_error('ng_wo') ?></td><td><input type="number" class="form-control" name="ng_wo" id="ng_wo" placeholder="NG Produk" value="<?php echo $ng_wo; ?>" /></td>
					<?php } else { ?>
						<td width='200'>NG Produk <?php echo form_error('ng_wo') ?></td><td><input type="number" class="form-control" name="ng_wo" id="ng_wo" placeholder="NG Produk" value="<?php echo $ng_wo; ?>" readonly /></td>
					<?php }; ?>
					</tr>
	    
					<tr>
					<?php if($this->session->userdata('id_user_level')=='1'){ ?>
						<td width='200'>Deskripsi <?php echo form_error('deskripsi_wo') ?></td>
						<td> <textarea class="form-control" rows="3" name="deskripsi_wo" id="deskripsi_wo" placeholder="Deskripsi Wo"><?php echo $deskripsi_wo; ?></textarea></td>
					<?php } else if($this->session->userdata('id_user_level')=='2'){ ?>
						<td width='200'>Deskripsi <?php echo form_error('deskripsi_wo') ?></td>
						<td> <textarea class="form-control" rows="3" name="deskripsi_wo" id="deskripsi_wo" placeholder="Deskripsi Wo"><?php echo $deskripsi_wo; ?></textarea></td>
					<?php } else if($this->session->userdata('id_user_level')=='5'){ ?>
						<td width='200'>Deskripsi <?php echo form_error('deskripsi_wo') ?></td>
						<td> <textarea class="form-control" rows="3" name="deskripsi_wo" id="deskripsi_wo" placeholder="Deskripsi Wo"><?php echo $deskripsi_wo; ?></textarea></td>
					<?php } else { ?>
						<td width='200'>Deskripsi <?php echo form_error('deskripsi_wo') ?></td>
						<td> <textarea class="form-control" rows="3" name="deskripsi_wo" id="deskripsi_wo" placeholder="Deskripsi Wo" readonly><?php echo $deskripsi_wo; ?></textarea></td>
					<?php }; ?>
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