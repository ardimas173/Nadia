<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BiayapendaftaranSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Biayapendaftarans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="biayapendaftaran-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Biayapendaftaran', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

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

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
