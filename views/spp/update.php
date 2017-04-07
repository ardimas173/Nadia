<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Spp */

$this->title = 'Update Spp: ' . ' ' . $model->SPP_ID;
$this->params['breadcrumbs'][] = ['label' => 'Spps', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->SPP_ID, 'url' => ['view', 'id' => $model->SPP_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="spp-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
