<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PaymentpackagedetailSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Paymentpackagedetails';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackagedetail-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Paymentpackagedetail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'payment_package_detail_id',
            [
                'attribute'=>'payment_package_name',
                'value'=> 'package.payment_package_name'
            ],
            [
                'attribute'=>'payment_component_name',
                'value'=> 'component.payment_component_name'
            ],
            'amount',
            //'status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>

