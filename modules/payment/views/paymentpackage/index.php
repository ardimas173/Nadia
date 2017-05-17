<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PaymentpackageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Paymentpackages';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackage-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Paymentpackage', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'payment_package_id',
            'payment_package_name',
            'batch_id',
            'course_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
