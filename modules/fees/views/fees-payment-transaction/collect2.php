<script src="https://unpkg.com/vue"></script>
<?php

use app\modules\course\models\Courses;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

?>
<div id="app">
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'course')->dropDownList(ArrayHelper::map(Courses::find()->all(), 'course_id', 'course_name'),
        [
            'prompt' => 'Please Select',
            'v-model' => 'courseid',
            '@change' => 'setCategory(5)'
        ]) ?>
    <?= $form->field($model, 'category')->dropDownList(['s' => 'asd'], ['prompt' => 'Please Select']) ?>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>

<script>
    var app = new Vue({
        el: '#app',
        data: {
            courseid: 'asdf'
        }
        methods: {
            setCategory: function (courseid) {
                alert('asdf')
            }
        }
    })


</script>


<script>     var app = new Vue({
        el: '#app',
        data: {
            message: 'asdf',
            courseid: "<?= isset($FccModel->fees_collect_course_id) ? $FccModel->fees_collect_course_id : '' ?>",
            sectionid: "<?= isset($FccModel->fees_collect_section_id) ? $FccModel->fees_collect_section_id : '' ?>"
        },
        methods: {
            setcategory: function (courseid) {
                $.get("<?= Url::toRoute('dependent/get-package') ?>?courseid=" + courseid).done(function (data) {
                    $('#paymentform-category').html(data);
                })
            }
        }
    }) </script>
