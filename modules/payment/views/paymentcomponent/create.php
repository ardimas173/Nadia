<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Paymentcomponent */

$this->title = 'Create Paymentcomponent';
$this->params['breadcrumbs'][] = ['label' => 'Paymentcomponents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentcomponent-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
