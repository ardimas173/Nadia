<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tablebaru */

$this->title = 'Update Tablebaru: ' . ' ' . $model->t_id;
$this->params['breadcrumbs'][] = ['label' => 'Tablebarus', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->t_id, 'url' => ['view', 'id' => $model->t_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tablebaru-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
