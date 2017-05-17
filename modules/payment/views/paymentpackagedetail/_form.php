<?php

use app\models\Paymentcomponent;
use app\models\Paymentpackage;
use app\models\Paymentpackagedetail;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Paymentpackagedetail */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="paymentpackagedetail-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php

    $checkdetailpayment = Paymentpackagedetail::find()->select('payment_package_id')->distinct()->all();
    $checkdetailpayment = ArrayHelper::getColumn($checkdetailpayment, 'payment_package_id');

    ?>


    <?= $form->field($model, 'payment_package_id')->dropDownList(ArrayHelper::map(Paymentpackage::find()
        ->where(['not in','payment_package_id',$checkdetailpayment])
        ->all(),'payment_package_id','payment_package_name'),['prompt'=>'Please Select']) ?>

    <?php $component = Paymentcomponent::find()->all(); ?>


    <table class="table table-bordered">
        <tr>
            <th>Component Name</th>
            <th>Amount</th>
        </tr>

    <?php foreach ($component as $comp) : ?>
        <tr>
            <td><?= $comp->payment_component_name ?></td>
            <td><input type="text" required name="amount[<?= $comp->payment_component_id ?>]"></td>
        </tr>
    <?php endforeach; ?>

    </table>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>



<?php
if(Yii::$app->request->isPost)
{
    foreach ($component as $comp)
    {
        $paymentdetail = new Paymentpackagedetail();
        $paymentdetail->payment_package_id = $_POST['Paymentpackagedetail']['payment_package_id'];
        $paymentdetail->payment_component_id = $comp->payment_component_id;
        $paymentdetail->amount = $_POST['amount'][$comp->payment_component_id] ;
        $paymentdetail->save(false);
    }

    $this->context->redirect('index');

}


?>
