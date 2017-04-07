<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Spp20152016Search */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="spp20152016-search">

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

    <?php // echo $form->field($model, 'tanggal_bayar_juli_15') ?>

    <?php // echo $form->field($model, 'debit_juli_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_agustus_15') ?>

    <?php // echo $form->field($model, 'debit_agustus_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_september_15') ?>

    <?php // echo $form->field($model, 'spp_september_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_oktober_15') ?>

    <?php // echo $form->field($model, 'spp_oktober_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_november_15') ?>

    <?php // echo $form->field($model, 'spp_november_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_desember_15') ?>

    <?php // echo $form->field($model, 'spp_desember_15') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_januari_16') ?>

    <?php // echo $form->field($model, 'spp_januari_16') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_februari_16') ?>

    <?php // echo $form->field($model, 'spp_februari_16') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_maret_16') ?>

    <?php // echo $form->field($model, 'spp_maret_16') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_april_16') ?>

    <?php // echo $form->field($model, 'spp_april_16') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_mei_16') ?>

    <?php // echo $form->field($model, 'spp_mei_16') ?>

    <?php // echo $form->field($model, 'tanggal_bayar_juni_16') ?>

    <?php // echo $form->field($model, 'spp_juni_16') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
