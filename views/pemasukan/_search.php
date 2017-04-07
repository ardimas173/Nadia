<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PemasukanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pemasukan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'income_id') ?>

    <?= $form->field($model, 'income_date') ?>

    <?= $form->field($model, 'income_explanation') ?>

    <?= $form->field($model, 'debit_pemasukan') ?>

    <?= $form->field($model, 'kredit_pemasukan') ?>

    <?php // echo $form->field($model, 'saldo_pemasukan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
