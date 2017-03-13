<?php
namespace app\modules\course\controllers;

use Yii;
use app\modules\course\models\Section;
use app\modules\course\models\SectionSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\bootstrap\ActiveForm;
use yii\helpers\Json;
use pheme\grid\actions\ToggleAction;


class SectionController extends Controller
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

    public function actions()
    {
	    return [
		'toggle' => [
		    'class' => ToggleAction::className(),
		    'modelClass' => 'app\modules\course\models\Section',
		    'attribute' => 'is_status',
		    // Uncomment to enable flash messages
		    'setFlash' => true,
		],
	    ];
    } 

    public function actionIndex()
    {
        $searchModel = new SectionSearch();
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
        // TODO-IB tambahkan field baru namanya course_id untuk menentukan section ini ke
        // course mana abaikan batch_secition_id

        $model = new Section();
        if ($model->load(Yii::$app->request->post())) {
            $model->attributes = $_POST['Section'];
            $model->created_at = new \yii\db\Expression('NOW()');
            $model->created_by = Yii::$app->getid->getId();
            $model->save();
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

	if (Yii::$app->request->isAjax && $model->load(Yii::$app->request->post())) {
        	\Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        	return ActiveForm::validate($model);
       	}

	if ($model->load(Yii::$app->request->post())) {

		$model->attributes = $_POST['Section'];
		$model->updated_at = new \yii\db\Expression('NOW()');
		$model->updated_by = Yii::$app->getid->getId();
		$model->save();
		return $this->redirect(['view', 'id' => $model->section_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    public function actionDelete($id)
    {
        $model = Section::findOne($id);
	$model->is_status = 2;
	$model->update();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Section::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
