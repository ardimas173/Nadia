<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Biayapendaftaran */

$this->title = $model->pay_id;
$this->params['breadcrumbs'][] = ['label' => 'Biayapendaftarans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="biayapendaftaran-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->pay_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->pay_id], [
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
            'pay_id',
            'nama',
            'section',
            'tgl_daftar',
            'biaya',
            'tgl_cicilan1',
            'cicilan1',
            'tgl_cicilan2',
            'cicilan2',
            'tgl_cicilan3',
            'cicilan3',
            'tgl_cicilan4',
            'cicilan4',
            'tgl_cicilan5',
            'cicilan5',
            'tgl_cicilan6',
            'cicilan6',
            'total',
            'ket',
        ],
    ]) ?>

</div>
