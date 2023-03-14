<?php
include('config.php');
include('fungsi.php');
include('header.php');
?>
<section class="content">
	<h2 class="ui header">Perbandingan Kriteria</h2>
	<div class="two column row">

		
		
		<div class="column">
			

			<div class="extra content">
				<h4 class="ui sub header">Tabel Tingkat Kepentingan menurut Saaty (1980)</h4>
				<table class="ui collapsing striped red table">
					<thead>
						<tr>
							<th>Nilai Numerik</th>
							<th>Tingkat Kepentingan <em>(Preference)</em></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="center aligned">1</td>
							<td>Sama pentingnya <em>(Equal Importance)</em></td>
						</tr>
						<tr>
							<td class="center aligned">2</td>
							<td>Sama hingga sedikit lebih penting</td>
						</tr>
						<tr>
							<td class="center aligned">3</td>
							<td>Sedikit lebih penting <em>(Slightly more importance)</em></td>
						</tr>
						<tr>
							<td class="center aligned">4</td>
							<td>Sedikit lebih hingga jelas lebih penting</td>
						</tr>
						<tr>
							<td class="center aligned">5</td>
							<td>Jelas lebih penting <em>(Materially more importance)</em></td>
						</tr>
						<tr>
							<td class="center aligned">6</td>
							<td>Jelas hingga sangat jelas lebih penting</td>
						</tr>
						<tr>
							<td class="center aligned">7</td>
							<td>Sangat jelas lebih penting <em>(Significantly more importance)</em></td>
						</tr>
						<tr>
							<td class="center aligned">8</td>
							<td>Sangat jelas hingga mutlak lebih penting</td>
						</tr>
						<tr>
							<td class="center aligned">9</td>
							<td>Mutlak lebih penting <em>(Absolutely more importance)</em></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<br>
			<?php showTabelPerbandingan('kriteria', 'kriteria'); ?>
		</div>


	</div>
</section>

<?php include('footer.php'); ?>