<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackagedetail */

$this->title = $model->payment_package_detail_id;
$this->params['breadcrumbs'][] = ['label' => 'Paymentpackagedetails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackagedetail-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->payment_package_detail_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->payment_package_detail_id], [
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
            'payment_package_detail_id',
            'payment_package_id',
            'payment_component_id',
            'amount',
            'status',
        ],
    ]) ?>

</div>
