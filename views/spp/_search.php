<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\SppSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="spp-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'SPP_ID') ?>

    <?= $form->field($model, 'NAMA') ?>

    <?= $form->field($model, 'DATE_PAY_JULI_15') ?>

    <?= $form->field($model, 'DEBIT_JULI_15') ?>

    <?= $form->field($model, 'DATE_PAY_AGUST_15') ?>

    <?php // echo $form->field($model, 'DEBIT_AGUST_15') ?>

    <?php // echo $form->field($model, 'DATE_PAY_SEPT_15') ?>

    <?php // echo $form->field($model, 'DEBIT_SEPT_15') ?>

    <?php // echo $form->field($model, 'DATE_PAY_OKT_15') ?>

    <?php // echo $form->field($model, 'DEBIT_OKT_15') ?>

    <?php // echo $form->field($model, 'DATE_PAY_NOV_15') ?>

    <?php // echo $form->field($model, 'DEBIT_NOV_15') ?>

    <?php // echo $form->field($model, 'DATE_PAY_DES_15') ?>

    <?php // echo $form->field($model, 'DEBIT_DES_15') ?>

    <?php // echo $form->field($model, 'DATE_PAY_JAN_16') ?>

    <?php // echo $form->field($model, 'DEBIT_JAN_16') ?>

    <?php // echo $form->field($model, 'DATE_PAY_FEB_16') ?>

    <?php // echo $form->field($model, 'DEBIT_FEB_16') ?>

    <?php // echo $form->field($model, 'DATE_PAY_MAR_16') ?>

    <?php // echo $form->field($model, 'DEBIT_MAR_16') ?>

    <?php // echo $form->field($model, 'DATE_PAY_APR_16') ?>

    <?php // echo $form->field($model, 'DEBIT_APR_16') ?>

    <?php // echo $form->field($model, 'DATE_PAY_MEI_16') ?>

    <?php // echo $form->field($model, 'DEBIT_MEI_16') ?>

    <?php // echo $form->field($model, 'DATE_PAY_JUNI_16') ?>

    <?php // echo $form->field($model, 'DEBIT_JUNI_16') ?>

    <?php // echo $form->field($model, 'SALDO') ?>

    <?php // echo $form->field($model, 'KETERANGAN') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
