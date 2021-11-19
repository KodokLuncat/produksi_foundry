
<div class="content-wrapper">
	
	<section class="content">
		<div class="box box-warning box-solid">
			<div class="box-header with-border">
				<h3 class="box-title">DETAIL DATA WORK ORDER</h3>
			</div>
		
		<table class='table table-bordered'>        

	
			<tr>
				<td>No Work Order</td>
				<td><?php echo $no_wo; ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Mulai</td>
				<td><?php echo $tanggal_mulai; ?></td>
			</tr>
	
			<tr>
				<td>Tanggal Selesai</td>
				<td><?php echo $tanggal_selesai; ?></td>
			</tr>
		</table>
		<table class="table table-bordered table-striped">
            <thead>
                <tr>
			<td>No</td>
		    <td>Type</td>
		    <td>Status</td>
		    <td>Part Number</td>
			<td>Part Name</td>
		    <td>Part</td>
		    <td>Size</td>
		    <td>Plan</td>
		    <td>Actual</td>
			<td>OK Produk</td>
		    <td>NG Produk</td>
                </tr>
				<?php
      $no = 1;
    ?>
            </thead>
			<tbody>
			
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $type_wo; ?></td>
			<td><?php echo $status_wo; ?></td>
			<td><?php echo $part_number_wo; ?></td>
			<td><?php echo $part_name_wo; ?></td>
			<td><?php echo $part_wo; ?></td>
			<td><?php echo $size_wo; ?></td>
			<td><?php echo $plan_wo; ?></td>
			<td><?php echo $actual_wo; ?></td>
			<td><?php echo $ok_wo; ?></td>
			<td><?php echo $ng_wo; ?></td>
			<?php  ?>
		</tr>
	
			</tbody>
	    
        </table>


		<table class='table table-bordered'>
			<tr>
				<td><a href="<?php echo site_url('wo') ?>" class="btn btn-default">Kembali</a></td>
			</tr>	
		</table>
		</div>
	</section>
</div>