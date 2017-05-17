<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentcomponent */

$this->title = 'Update Paymentcomponent: ' . ' ' . $model->payment_component_id;
$this->params['breadcrumbs'][] = ['label' => 'Paymentcomponents', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->payment_component_id, 'url' => ['view', 'id' => $model->payment_component_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="paymentcomponent-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
