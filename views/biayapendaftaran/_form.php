<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Biayapendaftaran */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="biayapendaftaran-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pay_id')->textInput() ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'section')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'tgl_daftar')->textInput() ?>

    <?= $form->field($model, 'biaya')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan1')->textInput() ?>

    <?= $form->field($model, 'cicilan1')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan2')->textInput() ?>

    <?= $form->field($model, 'cicilan2')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan3')->textInput() ?>

    <?= $form->field($model, 'cicilan3')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan4')->textInput() ?>

    <?= $form->field($model, 'cicilan4')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan5')->textInput() ?>

    <?= $form->field($model, 'cicilan5')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan6')->textInput() ?>

    <?= $form->field($model, 'cicilan6')->textInput() ?>

    <?= $form->field($model, 'total')->textInput() ?>

    <?= $form->field($model, 'ket')->textInput(['maxlength' => 200]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
