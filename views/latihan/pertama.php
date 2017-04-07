<?php
/**
 * Created by PhpStorm.
 * User: imac
 * Date: 3/29/17
 * Time: 11:11 AM
 */
use app\models\Pemasukan;

?>



<?php

$datapemasukan = Pemasukan::find()
    ->where(['like','income_explanation','cicilan'])
    ->andWhere(['>','debit_pemasukan','500000'])
    ->all();

?>


* @property integer $income_id
* @property string $income_date
* @property string $income_explanation
* @property integer $debit_pemasukan
* @property integer $kredit_pemasukan
* @property integer $saldo_pemasukan



<h1>Latihan Pertama</h1>


<h2>Data Semua Pemasukan</h2>


<table class="table">
    <tr>
        <td>Income ID</td>
        <td>Income Date</td>
        <td>Income Explanation</td>
        <td>Debit</td>
        <td>Kredit</td>
        <td>Saldo</td>
    </tr>


<?php foreach ($datapemasukan as $pemasukan) : ?>

<tr>
    <td><?php echo $pemasukan->income_id; ?></td>
    <td><?= $pemasukan->income_date ?></td>
    <td><?= $pemasukan->income_explanation ?></td>
    <td><?= $pemasukan->debit_pemasukan ?></td>
    <td><?= $pemasukan->kredit_pemasukan ?></td>
    <td><?= $pemasukan->saldo_pemasukan ?></td>
</tr>


<?php endforeach;?>

</table>