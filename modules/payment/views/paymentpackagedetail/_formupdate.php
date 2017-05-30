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


if(isset($_GET['paymentpackageid']))
    $model->payment_package_id = $_GET['paymentpackageid'];

?>

<div class="paymentpackagedetail-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php

    $checkdetailpayment = Paymentpackagedetail::find()->select('payment_package_id')->distinct()->all();
    $checkdetailpayment = ArrayHelper::getColumn($checkdetailpayment, 'payment_package_id');
    $components = Paymentpackagedetail::find()
        ->where(['payment_package_id'=>$model->payment_package_id])
        ->orderBy(['payment_component_id'=>SORT_ASC])->all();
    ?>


    <h2>Payment Package Name : <?= $model->package->payment_package_name; ?></h2>


    <table class="table table-bordered">
        <tr>
            <th>Component Name</th>
            <th>Amount</th>
        </tr>

    <?php foreach ($components as $comp):?>

        <tr>
            <td><?=$comp->component->payment_component_name?></td>
            <td><input type="text" value="<?=$comp->amount?>" name="amount[<?=$comp->payment_package_detail_id?>]"></td>
        </tr>

    <?php endforeach;?>


    </table>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>



<?php
if(Yii::$app->request->isPost)
{
    $paymentpackagedetails = $_POST['amount'];
    foreach ($paymentpackagedetails as $key=>$val){
        $ppd = Paymentpackagedetail::findOne($key);
        $ppd->amount = $val;
        $ppd->save(false);
//        echo $ppd->payment_package_detail_id .'-'.$ppd->amount;
//        echo '<br />';
    }
    $this->context->redirect('index');
}


?>
