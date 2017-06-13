<?php
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
?>
<aside class="right-side">

        <?= Breadcrumbs::widget(
            [
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
				'homeLink'=>['label' => '<i class="fa fa-dashboard"></i> '.Yii::t('app', 'Home'), 'encode' => false, 'url'=>Yii::$app->homeUrl],

            ]
        ) ?>


    <section class="content">
        <?= Html::a('Payment Package',Url::toRoute('/payment/paymentpackage'),['class'=>'btn btn-primary']) ?>
        <?= Html::a('Payment Package Detail',Url::toRoute('/payment/paymentpackagedetail'),['class'=>'btn btn-primary']) ?>
        <?= Html::a('Payment Component',Url::toRoute('/payment/paymentcomponent'),['class'=>'btn btn-primary']) ?>
        <?= Html::a('Collect',Url::toRoute('/fees/fees-payment-transaction/collecttwo'),['class'=>'btn btn-primary']) ?>
        <?= $content ?>
    </section>

    <footer class="edusec-main-footer">
      <div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
        <div class="pull-right hidden-xs">
          <!--b>Version</b> 3.0 -->
        </div>
        <strong><?= Yii::t('app', 'Copyright') ?> &copy; <?= date('Y') ?> <a href="http://www.inbatam.com">Kuadran Teknologi Indonesia</a>.</strong> <?= Yii::t('app', 'All rights reserved') ?>.
      </div>
    </footer>

</aside>


