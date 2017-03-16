<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SppSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Spps';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Spp', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'SPP_ID',
            'NAMA',
            'DATE_PAY_JULI_15',
            'DEBIT_JULI_15',
            'DATE_PAY_AGUST_15',
             'DEBIT_AGUST_15',
             'DATE_PAY_SEPT_15',
             'DEBIT_SEPT_15',
             'DATE_PAY_OKT_15',
             'DEBIT_OKT_15',
             'DATE_PAY_NOV_15',
             'DEBIT_NOV_15',
             'DATE_PAY_DES_15',
             'DEBIT_DES_15',
             'DATE_PAY_JAN_16',
             'DEBIT_JAN_16',
             'DATE_PAY_FEB_16',
             'DEBIT_FEB_16',
             'DATE_PAY_MAR_16',
             'DEBIT_MAR_16',
             'DATE_PAY_APR_16',
             'DEBIT_APR_16',
             'DATE_PAY_MEI_16',
             'DEBIT_MEI_16',
             'DATE_PAY_JUNI_16',
             'DEBIT_JUNI_16',
             'SALDO',
             'KETERANGAN',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
