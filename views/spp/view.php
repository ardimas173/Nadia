<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Spp */

$this->title = $model->SPP_ID;
$this->params['breadcrumbs'][] = ['label' => 'Spps', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->SPP_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->SPP_ID], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'SPP_ID',
            'NAMA',
            'DATE_PAY_JULI_15',
            'DEBIT_JULI_15',
            'DATE_PAY_AGUST_15',
            'DEBIT_AGUST_15',
            'DATE_PAY_SEPT_15',
            'DEBIT_SEPT_15',
            'DATE_PAY_OKT_15',
            'DEBIT_OKT_15',
            'DATE_PAY_NOV_15',
            'DEBIT_NOV_15',
            'DATE_PAY_DES_15',
            'DEBIT_DES_15',
            'DATE_PAY_JAN_16',
            'DEBIT_JAN_16',
            'DATE_PAY_FEB_16',
            'DEBIT_FEB_16',
            'DATE_PAY_MAR_16',
            'DEBIT_MAR_16',
            'DATE_PAY_APR_16',
            'DEBIT_APR_16',
            'DATE_PAY_MEI_16',
            'DEBIT_MEI_16',
            'DATE_PAY_JUNI_16',
            'DEBIT_JUNI_16',
            'SALDO',
            'KETERANGAN',
        ],
    ]) ?>

</div>
