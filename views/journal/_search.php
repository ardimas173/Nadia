<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\JournalSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="journal-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'journal_id') ?>

    <?= $form->field($model, 'journal_description') ?>

    <?= $form->field($model, 'journal_date') ?>

    <?= $form->field($model, 'debit') ?>

    <?= $form->field($model, 'credit') ?>

    <?php // echo $form->field($model, 'journal_type_id') ?>

    <?php // echo $form->field($model, 'journal_remark') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
