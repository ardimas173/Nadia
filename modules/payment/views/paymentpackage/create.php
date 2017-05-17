<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackage */

$this->title = 'Create Paymentpackage';
$this->params['breadcrumbs'][] = ['label' => 'Paymentpackages', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackage-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
