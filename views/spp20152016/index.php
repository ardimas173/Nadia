<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\Spp20152016Search */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Spp20152016s';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp20152016-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Spp20152016', ['create'], ['class' => 'btn btn-success']) ?>
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

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
