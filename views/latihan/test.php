<?php


?>





<?php


use app\models\Journal;

$jurnals = Journal::find()->where(['!=','debit',0])->all();

?>

<table class="table table-bordered">
    <tr>
        <td>ID</td>
        <td>Descripotion</td>
        <td>Tgl</td>
        <td>Debit</td>
        <td>Kredit</td>
    </tr>

<?php foreach ($jurnals as $jurnal):?>

    <tr>
        <td><?= $jurnal->journal_id ?></td>
        <td><?= $jurnal->journal_description ?></td>
        <td><?= $jurnal->journal_date ?></td>
        <td><?= $jurnal->debit ?></td>
        <td><?= $jurnal->credit ?></td>
    </tr>


<?php endforeach;?>




</table>


<?php


$query = (new \yii\db\Query())->from('journal')->where(['!=','credit',0]);
$sum = $query->sum('credit');
echo $sum;

