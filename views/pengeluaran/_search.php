<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PengeluaranSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengeluaran-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_pengeluaran') ?>

    <?= $form->field($model, 'tanggal_pengeluaran') ?>

    <?= $form->field($model, 'keterangan_pengeluaran') ?>

    <?= $form->field($model, 'debit_pengeluaran') ?>

    <?= $form->field($model, 'kredit_pengeluaran') ?>

    <?php // echo $form->field($model, 'saldo_pengeluaran') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
