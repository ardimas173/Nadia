<?php

namespace app\modules\payment\controllers;

use app\models\Paymentcomponent;
use Yii;
use app\models\Paymentpackagedetail;
use app\models\PaymentpackagedetailSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PaymentpackagedetailController implements the CRUD actions for Paymentpackagedetail model.
 */
class PaymentpackagedetailController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {
        $searchModel = new PaymentpackagedetailSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCreate()
    {
        $model = new Paymentpackagedetail();

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionUpdate($paymentpackageid)
    {
        $adamodel = Paymentpackagedetail::find()->where(['payment_package_id'=>$paymentpackageid])->exists();
        if($adamodel){
            $model = Paymentpackagedetail::find()->where(['payment_package_id'=>$paymentpackageid])->one();
        }
        else{
            $paymentcomponents = Paymentcomponent::find()->all();
            foreach ($paymentcomponents as $pc){
                $ppd = new Paymentpackagedetail();
                $ppd->payment_package_id = $paymentpackageid;
                $ppd->payment_component_id = $pc->payment_component_id;
                $ppd->amount = 0;
                $ppd->save(false);
            }
            $model = Paymentpackagedetail::find()->where(['payment_package_id'=>$paymentpackageid])->one();
        }



            return $this->render('update', [
                'model' => $model,
            ]);

    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Paymentpackagedetail::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}


/*
public function actionUpdate($id)
{
    $model = $this->findModel($id);

    if ($model->load(Yii::$app->request->post()) && $model->save()) {
        return $this->redirect(['view', 'id' => $model->payment_package_detail_id]);
    } else {
        return $this->render('update', [
            'model' => $model,
        ]);
    }
}
*/