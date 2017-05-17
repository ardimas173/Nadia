<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackagedetail */

$this->title = 'Create Paymentpackagedetail';
$this->params['breadcrumbs'][] = ['label' => 'Paymentpackagedetails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackagedetail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
