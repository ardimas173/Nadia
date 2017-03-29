<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Pemasukan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pemasukan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'income_date')->textInput() ?>

    <?= $form->field($model, 'income_explanation')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'debit_pemasukan')->textInput() ?>

    <?= $form->field($model, 'kredit_pemasukan')->textInput() ?>

    <?= $form->field($model, 'saldo_pemasukan')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
