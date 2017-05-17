<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackagedetail */

$this->title = 'Update Paymentpackagedetail: ' . ' ' . $model->payment_package_detail_id;
$this->params['breadcrumbs'][] = ['label' => 'Paymentpackagedetails', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->payment_package_detail_id, 'url' => ['view', 'id' => $model->payment_package_detail_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="paymentpackagedetail-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
