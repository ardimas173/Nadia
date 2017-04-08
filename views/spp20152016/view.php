<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Spp20152016 */

$this->title = $model->no_urut;
$this->params['breadcrumbs'][] = ['label' => 'Spp20152016s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp20152016-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->no_urut], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->no_urut], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'no_urut',
            'no_induk:ntext',
            'nama',
            'section',
            'course',
            'course_alias',
            'tahun_ajaran',
            'tanggal_bayar_juli_15',
            'debit_juli_15',
            'tanggal_bayar_agustus_15',
            'debit_agustus_15',
            'tanggal_bayar_september_15',
            'spp_september_15',
            'tanggal_bayar_oktober_15',
            'spp_oktober_15',
            'tanggal_bayar_november_15',
            'spp_november_15',
            'tanggal_bayar_desember_15',
            'spp_desember_15',
            'tanggal_bayar_januari_16',
            'spp_januari_16',
            'tanggal_bayar_februari_16',
            'spp_februari_16',
            'tanggal_bayar_maret_16',
            'spp_maret_16',
            'tanggal_bayar_april_16',
            'spp_april_16',
            'tanggal_bayar_mei_16',
            'spp_mei_16',
            'tanggal_bayar_juni_16',
            'spp_juni_16',
        ],
    ]) ?>

</div>
