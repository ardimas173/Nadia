<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PaymentpackageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Paymentpackages';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="paymentpackage-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Paymentpackage', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php
    $actionButton = [
        'class' => 'yii\grid\ActionColumn',
        'header' => 'Actions',
        'headerOptions' => ['style' => 'color:#337ab7'],
        'template' => '{update}',
        //'template' => '{view}{update}{delete}',
        'buttons' => [
            'view' => function ($url, $model) {
                return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                    'title' => Yii::t('app', 'lead-view'),
                ]);
            },

            'update' => function ($url, $model) {
                return Html::a('<span class="glyphicon glyphicon-pencil"></span>', $url, [
                    'title' => Yii::t('app', 'lead-update'),
                ]);
            },
            'delete' => function ($url, $model) {
                return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                    'title' => Yii::t('app', 'lead-delete'),
                ]);
            }

        ],
        'urlCreator' => function ($action, $model, $key, $index) {
            if ($action === 'view') {
                $url ='index.php?r=client-login/lead-view&id='.$model->payment_package_id;
                return $url;
            }

            if ($action === 'update') {
                $url = Url::toRoute('/payment/paymentpackagedetail/update?paymentpackageid='.$model->payment_package_id);
                return $url;
            }
            if ($action === 'delete') {
                $url ='index.php?r=client-login/lead-delete&id='.$model->payment_package_id;
                return $url;
            }

        }
    ];
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'payment_package_id',
            'payment_package_name',
            'batch_id',
            'course_id',
            $actionButton
            ,
        ],
    ]); ?>

</div>
