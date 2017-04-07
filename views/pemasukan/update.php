<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Pemasukan */

$this->title = 'Update Pemasukan: ' . ' ' . $model->income_id;
$this->params['breadcrumbs'][] = ['label' => 'Pemasukans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->income_id, 'url' => ['view', 'id' => $model->income_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pemasukan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
