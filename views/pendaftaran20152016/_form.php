<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20152016 */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pendaftaran20152016-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'no_urut')->textInput() ?>

    <?= $form->field($model, 'no_induk')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'section')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'course')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'course_alias')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'tahun_ajaran')->textInput(['maxlength' => 200]) ?>

    <?= $form->field($model, 'gender')->textInput(['maxlength' => 10]) ?>

    <?= $form->field($model, 'tempat_lahir')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'tgl_lahir')->textInput() ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'bloodgroup')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'religion')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'tgl_daftar')->textInput() ?>

    <?= $form->field($model, 'bahasa')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'nama_ayah')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'nama_ibu')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'lastedu_ayah')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'lastedu_ibu')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'no_hp')->textInput(['maxlength' => 50]) ?>

    <?= $form->field($model, 'biaya_pendaftaran')->textInput() ?>

    <?= $form->field($model, 'tgl_bayar')->textInput() ?>

    <?= $form->field($model, 'cicilan1')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan1')->textInput() ?>

    <?= $form->field($model, 'cicilan2')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan2')->textInput() ?>

    <?= $form->field($model, 'cicilan3')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan3')->textInput() ?>

    <?= $form->field($model, 'cicilan4')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan4')->textInput() ?>

    <?= $form->field($model, 'cicilan5')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan5')->textInput() ?>

    <?= $form->field($model, 'cicilan6')->textInput() ?>

    <?= $form->field($model, 'tgl_cicilan6')->textInput() ?>

    <?= $form->field($model, 'status_bayar')->textInput(['maxlength' => 200]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
