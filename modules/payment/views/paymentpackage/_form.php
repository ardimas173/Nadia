<?php

use app\models\Paymentpackagedetail;
use app\modules\course\models\Courses;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackage */
/* @var $form yii\widgets\ActiveForm */

$component = Paymentpackagedetail::find()->where(['payment_package_id'=>$model->payment_package_id])->all();

?>

<div class="paymentpackage-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="col-md-4">
        <?= $form->field($model, 'payment_package_name')->textInput(['maxlength' => 250]) ?>
    </div>

    <div class="col-md-4">
        <?= $form->field($model, 'course_id')->dropDownList(ArrayHelper::map(Courses::find()->all(),'course_id','course_name'),['prompt'=>'Please Select']) ?>
    </div>

    <div class="form-group col-md-4">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>


</div>

    <div class="col-md-12">
        <hr>
        <h1>Daftar Komponen Bayaran</h1>

        <?php if(!$model->isNewRecord) : ?>
            <table class="table table-bordered">
            <tr>
                <th>Component Name</th>
                <th>Amount</th>
                <th>qwe</th>
            </tr>
            <?php foreach ($component as $comp):?>
                <tr>
                    <td><?= $comp->component->payment_component_name ?></td>
                    <td><?= $comp->amount?></td>
                    <td></td>
                </tr>
            <?php endforeach;?>
            </table>
        <?php endif;?>
    </div>