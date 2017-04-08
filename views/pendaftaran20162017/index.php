<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\Pendaftaran20162017Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pendaftaran20162017s';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pendaftaran20162017-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Pendaftaran20162017', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'no_urut',
            'no_induk:ntext',
            'nama',
            'section',
            'course',
             'course_alias',
             'tahun_ajaran',
             'gender',
             'tempat_lahir',
             'tgl_lahir',
             'alamat',
             'bloodgroup',
             'religion',
             'tgl_daftar',
             'bahasa',
             'nama_ayah',
             'nama_ibu',
             'lastedu_ayah',
             'lastedu_ibu',
             'no_hp',
             'biaya_pendaftaran',
             'tgl_bayar',
             'cicilan1',
             'tgl_cicilan1',
             'cicilan2',
             'tgl_cicilan2',
             'cicilan3',
             'tgl_cicilan3',
             'cicilan4',
             'tgl_cicilan4',
             'cicilan5',
             'tgl_cicilan5',
             'cicilan6',
             'tgl_cicilan6',
             'status_bayar',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
