<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Spp20152016 */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="spp20152016-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'no_induk')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'section')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'course')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'course_alias')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'tahun_ajaran')->textInput() ?>

    <?= $form->field($model, 'tanggal_bayar_juli_15')->textInput() ?>

    <?= $form->field($model, 'debit_juli_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_agustus_15')->textInput() ?>

    <?= $form->field($model, 'debit_agustus_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_september_15')->textInput() ?>

    <?= $form->field($model, 'spp_september_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_oktober_15')->textInput() ?>

    <?= $form->field($model, 'spp_oktober_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_november_15')->textInput() ?>

    <?= $form->field($model, 'spp_november_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_desember_15')->textInput() ?>

    <?= $form->field($model, 'spp_desember_15')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_januari_16')->textInput() ?>

    <?= $form->field($model, 'spp_januari_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_februari_16')->textInput() ?>

    <?= $form->field($model, 'spp_februari_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_maret_16')->textInput() ?>

    <?= $form->field($model, 'spp_maret_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_april_16')->textInput() ?>

    <?= $form->field($model, 'spp_april_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_mei_16')->textInput() ?>

    <?= $form->field($model, 'spp_mei_16')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'tanggal_bayar_juni_16')->textInput() ?>

    <?= $form->field($model, 'spp_juni_16')->textInput(['maxlength' => 100]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
