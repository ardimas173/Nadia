<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Biayapendaftaran */

$this->title = 'Update Biayapendaftaran: ' . ' ' . $model->pay_id;
$this->params['breadcrumbs'][] = ['label' => 'Biayapendaftarans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->pay_id, 'url' => ['view', 'id' => $model->pay_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="biayapendaftaran-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
