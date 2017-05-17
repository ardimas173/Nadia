<?php

use app\modules\course\models\Courses;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackage */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="paymentpackage-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'payment_package_name')->textInput(['maxlength' => 250]) ?>

    <?= $form->field($model, 'course_id')->dropDownList(ArrayHelper::map(Courses::find()->all(),'course_id','course_name'),['prompt'=>'Please Select']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
