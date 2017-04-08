<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Journaltype */

$this->title = 'Update Journaltype: ' . ' ' . $model->journal_type_id;
$this->params['breadcrumbs'][] = ['label' => 'Journaltypes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->journal_type_id, 'url' => ['view', 'id' => $model->journal_type_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="journaltype-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
