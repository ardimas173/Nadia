<?php
namespace app\modules\fees\controllers;

use app\models\PaymentForm;
use app\models\Paymentpackagedetail;
use app\modules\course\models\Batches;
use Yii;
use app\modules\fees\models\FeesPaymentTransaction;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use mPDF;

class FeesPaymentTransactionController extends Controller
{
    public function actionReset()
    {
        $cmd = 'truncate table fees_payment_transaction';
        Yii::$app->db->createCommand($cmd)->execute();
    }

    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                    'export-fcc-wise-fees-pdf' => ['post'],
                ],
            ],
        ];
    }


    public function actionPay($sid, $fcid)
    {
        return $this->render('payment/pay', []);
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCollect()
    {
        $FptModel = new FeesPaymentTransaction();
        $FccModel = new \app\modules\fees\models\FeesCollectCategory();
        $dispStatus = false;
        if (!empty($_POST['FeesCollectCategory']['fees_collect_category_id'])) {
            $dispStatus = true;
            $FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($_POST['FeesCollectCategory']['fees_collect_category_id']);
        }

        return $this->render('collect', [
            'FptModel' => $FptModel,
            'FccModel' => $FccModel,
            'dispStatus' => $dispStatus,
        ]);

    }

    public function actionCollecttwo($comp = 0, $course = 0, $category = 0)
    {
        $model = new PaymentForm();

        if (Yii::$app->request->isPost) {
            $model->load(Yii::$app->request->post());
            $comp = $model->category;

            $this->redirect(Url::current(['comp' => $comp, 'course' => $model->course, 'category' => $model->category]));
        }

        return $this->render('collect2', [
            'model' => $model
        ]);
    }

    public function actionExportFccWiseFeesPdf($fccid)
    {
        $FptModel = new FeesPaymentTransaction();
        $FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($fccid);
        $html = $this->renderPartial('ExportFccWiseFeesPdf', [
            'FptModel' => $FptModel,
            'FccModel' => $FccModel,
        ]);
        $fileName = $FccModel->fees_collect_name . "_" . date('Ymd-His');
        return Yii::$app->pdf->exportData($FccModel->fees_collect_name . ' Report', $fileName, $html);
    }

    public function actionPayFees($sid, $fcid)
    {
        $model = new FeesPaymentTransaction();
        $stuData = \app\modules\student\models\StuMaster::findOne($sid);
        $FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($fcid);
        if ($model->load(Yii::$app->request->post())) {
            $model->created_at = new \yii\db\Expression('NOW()');
            $model->created_by = Yii::$app->getid->getId();
            $model->fees_pay_tran_collect_id = $fcid;
            $model->fees_pay_tran_stu_id = $stuData->stu_master_id;
            $model->fees_pay_tran_batch_id = $stuData->stu_master_batch_id;
            $model->fees_pay_tran_course_id = $stuData->stu_master_course_id;
            $model->fees_pay_tran_section_id = $stuData->stu_master_section_id;

            if (!empty($model->fees_pay_tran_date)) {
                $model->fees_pay_tran_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_date);
            }
            if (!empty($model->fees_pay_tran_cheque_date)) {
                $model->fees_pay_tran_cheque_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_cheque_date);
            }
            if ($model->save() && $model->validate())
                return $this->redirect(['pay-fees', 'sid' => $sid, 'fcid' => $fcid]);

        }
        return $this->render('create', [
            'model' => $model,
            'stuData' => $stuData,
            'FccModel' => $FccModel,
        ]);

    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $stuData = \app\modules\student\models\StuMaster::findOne($model->fees_pay_tran_stu_id);
        $FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($model->fees_pay_tran_collect_id);
        if ($model->load(Yii::$app->request->post())) {
            $model->updated_at = new \yii\db\Expression('NOW()');
            $model->updated_by = Yii::$app->getid->getId();

            if (!empty($model->fees_pay_tran_date)) {
                $model->fees_pay_tran_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_date);
            }
            if (!empty($model->fees_pay_tran_cheque_date)) {
                $model->fees_pay_tran_cheque_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_cheque_date);
            }
            if ($model->save())
                return $this->redirect(['pay-fees', 'sid' => $model->fees_pay_tran_stu_id, 'fcid' => $model->fees_pay_tran_collect_id]);

        }
        return $this->render('update', [
            'model' => $model,
            'stuData' => $stuData,
            'FccModel' => $FccModel,
        ]);
    }

    public function actionPrintCommonReceipt($sid, $fcid)
    {
        $model = new FeesPaymentTransaction();
        $stuData = \app\modules\student\models\StuMaster::findOne($sid);
        $FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($fcid);
        $title = Yii::t('fees', "Receipt of ") . $stuData->stuMasterStuInfo->name . ' : ' . Yii::$app->dateformatter->getDateDisplay(date('Y-m-d'));
        $html = $this->renderPartial('print-common-receipt', [
            'model' => $model,
            'stuData' => $stuData,
            'FccModel' => $FccModel,
            'title' => $title,
        ]);

        $imgSrc = Yii::$app->urlManager->createAbsoluteUrl('site/loadimage');
        $mpdf = new mPDF('utf-8', 'A4', 0, '', 15, 15, 25, 16, 4, 9, 'P');
        $mpdf->autoScriptToLang = true;
        $mpdf->autoLangToFont = true;
        $mpdf->WriteHTML('<watermarkimage src=' . $imgSrc . ' alpha="0.33" size="50,30"/>');
        $mpdf->showWatermarkImage = true;
        $mpdf->WriteHTML($html);
        $mpdf->Output($title . '.pdf', "I");
    }

    public function actionStuFeesData()
    {
        if (Yii::$app->session->get('stu_id'))
            $sid = Yii::$app->session->get('stu_id');
        else if (!empty($_REQUEST['sid']))
            $sid = $_REQUEST['sid'];
        else
            throw new \yii\web\BadRequestHttpException("Missing required parameters: sid");

        $model = new FeesPaymentTransaction();
        $stuData = \app\modules\student\models\StuMaster::findOne($sid);
        $FccModel = new \app\modules\fees\models\FeesCollectCategory();

        return $this->render('stu-fees-data', [
            'model' => $model,
            'stuData' => $stuData,
            'FccModel' => $FccModel,
        ]);
    }

    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $model->is_status = 2;
        $model->updated_at = new \yii\db\Expression('NOW()');
        $model->updated_by = Yii::$app->getid->getId();
        $model->update(false, ['is_status', 'updated_at', 'updated_by']);

        if (Yii::$app->request->referrer) {
            return $this->redirect(Yii::$app->request->referrer);
        } else {
            return $this->goHome();
        }
    }

    protected function findModel($id)
    {
        if (($model = FeesPaymentTransaction::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
