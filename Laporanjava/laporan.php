<?php

include "config/koneksi.php";

?>

<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN MISSLAUNDRY</title>
</head>
<body>
	<form method="post">
		<table>
			<tr>
				<td>
					<div class="mainutama">
						<table align="center">
							<tr>
								<td width="7%" rowspan="3" align="center" valign="top"><img src="img/laporan.png" style="width:75px; height:70px;"></td>
       						<td width="93%" valign="bottom">&nbsp;LAPORAN MISSLAUNDRY</td>
							</tr>
							<tr>
								<td colspan="2">Jl. SINGAPERBANGSA KARAWANG</td>
							</tr>
						</table>
						<table width="500">
						<tr><td><hr></td></tr>
					</table>
					<table align="center" border="1">
						<tr>
							<th>No Antrian</th>
							<th>Nama</th>
							<th>No Telepon</th>
							<th>Alamat</th>
							<th>Jenis Pewangi</th>
							<th>Jumlah</th>
							<th>Harga</th>
							<th>Tanggal</th>
							<th>Total</th>
							<th>Bayar</th>
							<th>Kembalian</th>
						</tr>
						<?php
					      @$sql = "SELECT * FROM tbl_ambil";
					      @$query = mysqli_query($con, $sql);
					      while($data = mysqli_fetch_array($query)){
					    ?>
					    <tr>
					        <td align="center"><?= $data['no_antrian'] ?></td>
					        <td><?= $data['nama'] ?></td>
					        <td><?= $data['no_telp'] ?></td>
					        <td><?= $data['alamat'] ?></td>
					        <td><?= $data['j_pewangi'] ?></td>
					        <td><?= $data['jumlah'] ?></td>
					        <td><?= $data['harga'] ?></td>
					        <td><?= $data['tanggal'] ?></td>
					        <td><?= $data['total'] ?></td>
					        <td align="center"><?= $data['bayar'] ?></td>
					        <td align="right"><?= $data['kembali'] ?></td>
					      </tr>
					      <?php } ?>
					</table>
					<table width="100%">
			      		<tr><td><hr></td></tr>
			    	</table> 
			    	<table align="center">
			      		<tr>
			        	<td>&copy; <?php echo date('Y'); ?> MISSLAUNDRY</td>
			      		</tr>
			    	</table>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>