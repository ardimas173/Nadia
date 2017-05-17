<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentcomponent */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="paymentcomponent-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'payment_component_name')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'status')->dropDownList(['0'=>'Active','1'=>'Disable']) ; ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
