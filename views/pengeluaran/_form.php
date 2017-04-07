<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Pengeluaran */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pengeluaran-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tanggal_pengeluaran')->textInput() ?>

    <?= $form->field($model, 'keterangan_pengeluaran')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'debit_pengeluaran')->textInput() ?>

    <?= $form->field($model, 'kredit_pengeluaran')->textInput() ?>

    <?= $form->field($model, 'saldo_pengeluaran')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
