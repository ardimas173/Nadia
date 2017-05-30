<?php
/*****************************************************************************************
 * EduSec  Open Source Edition is a School / College management system developed by
 * RUDRA SOFTECH. Copyright (C) 2010-2015 RUDRA SOFTECH.

 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see http://www.gnu.org/licenses. 

 * You can contact RUDRA SOFTECH, 1st floor Geeta Ceramics, 
 * Opp. Thakkarnagar BRTS station, Ahmedbad - 382350, India or
 * at email address info@rudrasoftech.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * RUDRA SOFTECH" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by RUDRA SOFTECH".
 *****************************************************************************************/
/**
 * FeesPaymentTransactionController implements the CRUD actions for FeesPaymentTransaction model.
 *
 * @package EduSec.modules.fees.controllers
 */

namespace app\modules\fees\controllers;
use app\models\PaymentForm;
use Yii;
use app\modules\fees\models\FeesPaymentTransaction;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use mPDF;

class FeesPaymentTransactionController extends Controller
{
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
		if(!empty($_POST['FeesCollectCategory']['fees_collect_category_id'])) {
			$dispStatus = true;
			$FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($_POST['FeesCollectCategory']['fees_collect_category_id']);
		}

		return $this->render('collect', [
			'FptModel' => $FptModel,
			'FccModel' => $FccModel,
			'dispStatus'=> $dispStatus,
		]);

	}

	public function actionCollecttwo($comp=0,$course=0,$category=0)
	{
		$model = new PaymentForm();

		if(Yii::$app->request->isPost)
		{
			$model->load(Yii::$app->request->post());
			$comp=$model->category;

			$this->redirect(Url::current(['comp'=>$comp,'course'=>$model->course,'category'=>$model->category]));
		}

		return $this->render('collect2',[
			'model'=>$model
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
	$fileName = $FccModel->fees_collect_name."_".date('Ymd-His');
	return Yii::$app->pdf->exportData($FccModel->fees_collect_name.' Report', $fileName,$html);
    }

    	public function actionPayFees($sid, $fcid)
    {
        $model = new FeesPaymentTransaction();
	$stuData = \app\modules\student\models\StuMaster::findOne($sid);
	$FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($fcid);
        if($model->load(Yii::$app->request->post())) {

   	    $model->created_at = new \yii\db\Expression('NOW()');
	    $model->created_by = Yii::$app->getid->getId();
	    $model->fees_pay_tran_collect_id = $fcid;
	    $model->fees_pay_tran_stu_id = $stuData->stu_master_id;
	    $model->fees_pay_tran_batch_id = $stuData->stu_master_batch_id;
	    $model->fees_pay_tran_course_id = $stuData->stu_master_course_id;
	    $model->fees_pay_tran_section_id = $stuData->stu_master_section_id;
	
	    if(!empty($model->fees_pay_tran_date)) {
		$model->fees_pay_tran_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_date);
	    }
	    if(!empty($model->fees_pay_tran_cheque_date)) {
	   	 $model->fees_pay_tran_cheque_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_cheque_date);
	    }
	    if($model->save() && $model->validate()) 
            	return $this->redirect(['pay-fees', 'sid' => $sid, 'fcid'=>$fcid]);

        } 
	return $this->render('create', [
		'model' => $model,
		'stuData' => $stuData,
		'FccModel'=> $FccModel,
	]);
        
    }

    	public function actionUpdate($id)
    {
        $model = $this->findModel($id);
	$stuData = \app\modules\student\models\StuMaster::findOne($model->fees_pay_tran_stu_id);
	$FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($model->fees_pay_tran_collect_id);
        if($model->load(Yii::$app->request->post())) {
   	    $model->updated_at = new \yii\db\Expression('NOW()');
	    $model->updated_by = Yii::$app->getid->getId();

	     if(!empty($model->fees_pay_tran_date)) {
		$model->fees_pay_tran_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_date);
	    }
	    if(!empty($model->fees_pay_tran_cheque_date)) {
	   	 $model->fees_pay_tran_cheque_date = Yii::$app->dateformatter->getDateFormat($model->fees_pay_tran_cheque_date);
	    }
	    if($model->save()) 
            	return $this->redirect(['pay-fees', 'sid' => $model->fees_pay_tran_stu_id, 'fcid'=>$model->fees_pay_tran_collect_id]);

        } 
            return $this->render('update', [
                'model' => $model,
		'stuData' => $stuData,
		'FccModel'=> $FccModel,
            ]);
    }

    	public function actionPrintCommonReceipt($sid, $fcid)
    {
		$model = new FeesPaymentTransaction();
		$stuData = \app\modules\student\models\StuMaster::findOne($sid);
		$FccModel = \app\modules\fees\models\FeesCollectCategory::findOne($fcid);
		$title = Yii::t('fees', "Receipt of ").$stuData->stuMasterStuInfo->name.' : '.Yii::$app->dateformatter->getDateDisplay(date('Y-m-d'));
		$html = $this->renderPartial('print-common-receipt', [
					'model' => $model,
					'stuData' => $stuData,
					'FccModel'=> $FccModel,
					'title'=>$title,
				]);
				
		$imgSrc = Yii::$app->urlManager->createAbsoluteUrl('site/loadimage');
		$mpdf = new mPDF('utf-8', 'A4',0,'',15,15,25,16,4,9,'P');
		$mpdf->autoScriptToLang = true;
		$mpdf->autoLangToFont = true;
		$mpdf->WriteHTML('<watermarkimage src='.$imgSrc.' alpha="0.33" size="50,30"/>');
		$mpdf->showWatermarkImage = true;
		$mpdf->WriteHTML($html);
		$mpdf->Output($title.'.pdf', "I");
    }

    	public function actionStuFeesData()
    {
	if(Yii::$app->session->get('stu_id'))
		$sid = Yii::$app->session->get('stu_id');
	else if(!empty($_REQUEST['sid'])) 
		$sid = $_REQUEST['sid'];
	else 
		throw new \yii\web\BadRequestHttpException("Missing required parameters: sid");

	$model = new FeesPaymentTransaction();
	$stuData = \app\modules\student\models\StuMaster::findOne($sid);
	$FccModel = new \app\modules\fees\models\FeesCollectCategory();

	return $this->render('stu-fees-data', [
                'model' => $model,
		'stuData' => $stuData,
		'FccModel'=> $FccModel,
            ]);
    } 

    	public function actionDelete($id)
    {
	$model = $this->findModel($id);
	$model->is_status = 2;
	$model->updated_at = new \yii\db\Expression('NOW()');
	$model->updated_by = Yii::$app->getid->getId();
	$model->update(false, ['is_status', 'updated_at', 'updated_by']);

	if(Yii::$app->request->referrer) {
	    return $this->redirect(Yii::$app->request->referrer);
	}else{
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
