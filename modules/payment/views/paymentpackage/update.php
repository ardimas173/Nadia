<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackage */

$this->title = 'Update Paymentpackage: ' . ' ' . $model->payment_package_id;
$this->params['breadcrumbs'][] = ['label' => 'Paymentpackages', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->payment_package_id, 'url' => ['view', 'id' => $model->payment_package_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="paymentpackage-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
