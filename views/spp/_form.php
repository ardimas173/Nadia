<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Spp */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="spp-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'NAMA')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_JULI_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_JULI_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_AGUST_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_AGUST_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_SEPT_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_SEPT_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_OKT_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_OKT_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_NOV_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_NOV_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_DES_15')->textInput() ?>

    <?= $form->field($model, 'DEBIT_DES_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_JAN_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_JAN_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_FEB_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_FEB_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_MAR_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_MAR_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_APR_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_APR_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_MEI_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_MEI_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'DATE_PAY_JUNI_16')->textInput() ?>

    <?= $form->field($model, 'DEBIT_JUNI_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'SALDO')->textInput() ?>

    <?= $form->field($model, 'KETERANGAN')->textInput(['maxlength' => 100]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
