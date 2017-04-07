<?php

use yii\helpers\Html;
//use yii\widgets\ActiveForm;
use yii\bootstrap\ActiveForm;
use yii\jui\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\modules\course\models\Courses */
/* @var $form yii\widgets\ActiveForm */
if(Yii::$app->controller->action->id == 'create')
	$label = Yii::t('course', 'Add');
else
	$label = Yii::t('course', 'Update');
?>

<div class="col-xs-12 col-lg-12">
	<div class="<?php echo $model->isNewRecord ? 'box-success' : 'box-info'; ?> box view-item col-xs-12 col-lg-12">
        <div class="courses-form">
            <?php $form = ActiveForm::begin([
                'id' => 'course-form',
                'enableAjaxValidation' => true,
                'fieldConfig' => [
                    'template' => "{label}{input}{error}",
                ],
            ]); ?>

            <div class="col-xs-12 col-sm-12 col-lg-12">
                <?= $form->field($model, 'course_name')->textInput(['maxlength' => 100, 'placeholder' => $model->getAttributeLabel('course_name')]) ?>
            </div>

            <div class="col-xs-12 col-lg-12 no-padding">
                <div class="col-xs-12 col-sm-6 col-lg-6">
                    <?= $form->field($model, 'course_code')->textInput(['maxlength' => 50, 'placeholder' => $model->getAttributeLabel('course_code')]) ?>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-6">
                    <?= $form->field($model, 'course_alias')->textInput(['maxlength' => 35, 'placeholder' => $model->getAttributeLabel('course_alias')]) ?>
                </div>
            </div>

            <div class="form-group col-xs-12 col-sm-6 col-lg-4 no-padding edusecArLangCss">
                <div class="col-xs-6">
                    <?= Html::submitButton($model->isNewRecord ? Yii::t('course', 'Create') : Yii::t('course', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-block btn-success' : 'btn btn-block btn-info']) ?>
                </div>
                <div class="col-xs-6">
                    <?= Html::a(Yii::t('course', 'Cancel'), ['index'], ['class' => 'btn btn-default btn-block']) ?>
                </div>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
