<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20152016 */

$this->title = 'Update Pendaftaran20152016: ' . ' ' . $model->no_urut;
$this->params['breadcrumbs'][] = ['label' => 'Pendaftaran20152016s', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->no_urut, 'url' => ['view', 'id' => $model->no_urut]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pendaftaran20152016-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
