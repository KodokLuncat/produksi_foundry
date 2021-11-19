<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            .word-table {
                border:1px solid black !important; 
                border-collapse: collapse !important;
                width: 100%;
            }
            .word-table tr th, .word-table tr td{
                border:1px solid black !important; 
                padding: 5px 10px;
            }
        </style>
    </head>
    <body>
        <h2>Tbl_produk List</h2>
        <table class="word-table" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
		<th>Part Number</th>
		<th>Part Name</th>
		<th>Size</th>
		<th>Type</th>
		<th>Part</th>
		<th>Material</th>
		<th>Weight Core</th>
		<th>Weight Casting</th>
		<th>Weight Yield</th>
		<th>Weight Mach</th>
		
            </tr><?php
            foreach ($data_produk_data as $data_produk)
            {
                ?>
                <tr>
		      <td><?php echo ++$start ?></td>
		      <td><?php echo $data_produk->part_number ?></td>
		      <td><?php echo $data_produk->part_name ?></td>
		      <td><?php echo $data_produk->size ?></td>
		      <td><?php echo $data_produk->type ?></td>
		      <td><?php echo $data_produk->part ?></td>
		      <td><?php echo $data_produk->material ?></td>
		      <td><?php echo $data_produk->weight_core ?></td>
		      <td><?php echo $data_produk->weight_casting ?></td>
		      <td><?php echo $data_produk->weight_yield ?></td>
		      <td><?php echo $data_produk->weight_mach ?></td>	
                </tr>
                <?php
            }
            ?>
        </table>
    </body>
</html>