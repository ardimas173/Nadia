<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\BiayapendaftaranSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="biayapendaftaran-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'pay_id') ?>

    <?= $form->field($model, 'nama') ?>

    <?= $form->field($model, 'section') ?>

    <?= $form->field($model, 'tgl_daftar') ?>

    <?= $form->field($model, 'biaya') ?>

    <?php // echo $form->field($model, 'tgl_cicilan1') ?>

    <?php // echo $form->field($model, 'cicilan1') ?>

    <?php // echo $form->field($model, 'tgl_cicilan2') ?>

    <?php // echo $form->field($model, 'cicilan2') ?>

    <?php // echo $form->field($model, 'tgl_cicilan3') ?>

    <?php // echo $form->field($model, 'cicilan3') ?>

    <?php // echo $form->field($model, 'tgl_cicilan4') ?>

    <?php // echo $form->field($model, 'cicilan4') ?>

    <?php // echo $form->field($model, 'tgl_cicilan5') ?>

    <?php // echo $form->field($model, 'cicilan5') ?>

    <?php // echo $form->field($model, 'tgl_cicilan6') ?>

    <?php // echo $form->field($model, 'cicilan6') ?>

    <?php // echo $form->field($model, 'total') ?>

    <?php // echo $form->field($model, 'ket') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
