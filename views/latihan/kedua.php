<?php
/**
 * Created by PhpStorm.
 * User: imac
 * Date: 3/29/17
 * Time: 11:23 AM
 */
use app\models\Pemasukan;
use app\models\Tablebaru;

?>



* @property integer $income_id
* @property string $income_date
* @property string $income_explanation
* @property integer $debit_pemasukan
* @property integer $kredit_pemasukan
* @property integer $saldo_pemasukan


<?php

$datapemasukan = Pemasukan::find()->all();

foreach ($datapemasukan as $pemasukan)
{

    $tablebaru = new Tablebaru();
    $tablebaru->keterangan = "Keterangan $pemasukan->income_id : " .$pemasukan->income_explanation;
    $tablebaru->jumlah = $pemasukan->debit_pemasukan;
    $tablebaru->save(false);

}
$datatablebaru = Tablebaru::find()->all();

?>





<h1>Latihan Kedua</h1>
<h2>Transfer Data ke tabel lain</h2>



<table class="table">
    <tr>
        <td>Keterangan</td>
        <td>Jumlah</td>
    </tr>

<?php foreach ($datatablebaru as $dtbaru): ?>

    <tr>
        <td><?= $dtbaru->keterangan ?></td>
        <td><?= $dtbaru->jumlah ?></td>
    </tr>




<?php endforeach;?>
</table>