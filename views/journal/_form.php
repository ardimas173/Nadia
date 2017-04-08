<?php

use app\models\Journaltype;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Journal */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="journal-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'journal_description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'debit')->textInput() ?>

    <?= $form->field($model, 'credit')->textInput() ?>

    <?= $form->field($model, 'journal_type_id')->dropDownList(ArrayHelper::map(Journaltype::find()->all(),'journal_type_id','journal_type_name'),['prompt'=>'Select Type']) ?>

    <?= $form->field($model, 'journal_remark')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
