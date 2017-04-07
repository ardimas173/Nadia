<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20152016Search */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pendaftaran20152016-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'no_urut') ?>

    <?= $form->field($model, 'no_induk') ?>

    <?= $form->field($model, 'nama') ?>

    <?= $form->field($model, 'section') ?>

    <?= $form->field($model, 'course') ?>

    <?php // echo $form->field($model, 'course_alias') ?>

    <?php // echo $form->field($model, 'tahun_ajaran') ?>

    <?php // echo $form->field($model, 'gender') ?>

    <?php // echo $form->field($model, 'tempat_lahir') ?>

    <?php // echo $form->field($model, 'tgl_lahir') ?>

    <?php // echo $form->field($model, 'alamat') ?>

    <?php // echo $form->field($model, 'bloodgroup') ?>

    <?php // echo $form->field($model, 'religion') ?>

    <?php // echo $form->field($model, 'tgl_daftar') ?>

    <?php // echo $form->field($model, 'bahasa') ?>

    <?php // echo $form->field($model, 'nama_ayah') ?>

    <?php // echo $form->field($model, 'nama_ibu') ?>

    <?php // echo $form->field($model, 'lastedu_ayah') ?>

    <?php // echo $form->field($model, 'lastedu_ibu') ?>

    <?php // echo $form->field($model, 'no_hp') ?>

    <?php // echo $form->field($model, 'biaya_pendaftaran') ?>

    <?php // echo $form->field($model, 'tgl_bayar') ?>

    <?php // echo $form->field($model, 'cicilan1') ?>

    <?php // echo $form->field($model, 'tgl_cicilan1') ?>

    <?php // echo $form->field($model, 'cicilan2') ?>

    <?php // echo $form->field($model, 'tgl_cicilan2') ?>

    <?php // echo $form->field($model, 'cicilan3') ?>

    <?php // echo $form->field($model, 'tgl_cicilan3') ?>

    <?php // echo $form->field($model, 'cicilan4') ?>

    <?php // echo $form->field($model, 'tgl_cicilan4') ?>

    <?php // echo $form->field($model, 'cicilan5') ?>

    <?php // echo $form->field($model, 'tgl_cicilan5') ?>

    <?php // echo $form->field($model, 'cicilan6') ?>

    <?php // echo $form->field($model, 'tgl_cicilan6') ?>

    <?php // echo $form->field($model, 'status_bayar') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
