<?php

use app\models\Paymentcomponent;
use app\models\Paymentpackage;
use app\models\Paymentpackagedetail;
use app\modules\course\models\Batches;
use app\modules\course\models\Courses;
use app\modules\student\models\StuMaster;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

?>


<?php
$rows=[];
$isGood = false;

$comp = isset($_GET['comp']) ? ['comp'=>$_GET['comp']] : '';
$course = isset($_GET['course']) ? $_GET['course'] : '';
$category = isset($_GET['categoy']) ? $_GET['categoy'] : '';



$category = isset($_GET['category']) ? $_GET['category'] : '0';
$course = isset($_GET['course']) ? $_GET['course'] : '0';
$comp = isset($_GET['comp']) ? $_GET['comp'] : '0';

if($category != 0 && $course!=0)
    $isGood = true;

if(isset(Yii::$app->session['model'])){
    $model = Yii::$app->session['model'];
}

$urut = 1;

$batchID = Batches::findActive();

if(Yii::$app->request->isPost){
    $courseid = $_POST['PaymentForm']['course'];
    $rows = ArrayHelper::map(Paymentpackage::find()->where(['batch_id'=>$batchID])->andWhere(['course_id'=>$courseid])->all(),'payment_package_id','payment_package_name');
}

if(isset($_GET['course']) && isset($_GET['category']) ) {
    $courseid = $_GET['course'];
    $rows = ArrayHelper::map(Paymentpackage::find()->where(['batch_id'=>$batchID])->andWhere(['course_id'=>$courseid])->all(),'payment_package_id','payment_package_name');
}

?>

<div id="app">
    <?php $form = ActiveForm::begin(); ?>

    <div class="col-md-4">
        <?= $form->field($model, 'course')->dropDownList(ArrayHelper::map(Courses::find()->all(), 'course_id', 'course_name'),
            [
                'prompt' => 'Please Select',
                'v-model' => 'courseid',
                '@change' => 'setcategory(courseid)'
            ]) ?>
    </div>
    <div class="col-md-4">
        <?= $form->field($model, 'category')->dropDownList($rows, [
            'prompt' => 'Please Select',
            'v-model'=> 'categoryid'
        ]) ?>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>

    <?php if($isGood):?>
        <?php $students = StuMaster::find()->where(['stu_master_course_id'=>$course])
            ->andWhere(['stu_master_batch_id'=>$batchID])
            ->all();?>
        <table class="table table-bordered">
            <tr>
                <?php foreach (Paymentcomponent::find()->all() as $component):?>
                    <td><a href="<?= Url::current(['comp'=>$component->payment_component_id]) ?>"><?=$component->payment_component_name?></a></td>
                <?php endforeach;?>
            </tr></table>

            <table class="table table-bordered">
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Kelas</th>
                    <th>Section</th>
                    <th>Bayaran</th>
                    <th>Sudah dibayar</th>
                    <th>Kekurangan</th>
                </tr>
                <?php foreach ($students as $stu):?>
                    <tr>
                        <td><?= $urut ?></td>
                        <td><?= $stu->stuInfo->stu_first_name ?></td>
                        <td><?= $stu->stuMasterCourse->course_name ?></td>
                        <td><?= $stu->stuMasterSection->section_name ?></td>
                        <td><?= Paymentpackagedetail::getAmountByID($comp,$category) ?></td>
                        <td><?= 'd'?></td>
                        <td><?= Html::a('Bayar',Url::toRoute(['/fees/fees-payment-transaction/pay-fees','sid'=>$stu->stuInfo->stu_info_id,'fcid'=>1]))?>
                        </td>
                    </tr>
                    <?php $urut++;?>
                <?php endforeach;?>
            </table>

    <?php endif;?>
    <?php ActiveForm::end(); ?>
</div>



<script>
    var app = new Vue({
        el: '#app',
        data: {
            message: 'asdf',
            courseid: "<?= isset($_GET['course']) ? $_GET['course'] : ''?>",
            categoryid: "<?= isset($_GET['category']) ? $_GET['category'] : ''?>",
        },
        methods: {
            setcategory: function (courseid) {
                $.get("<?= Url::toRoute('dependent/get-package') ?>?courseid=" + courseid).done(function (data) {
                    $('#paymentform-category').html(data);
                })
            }
        }
    })
</script>
