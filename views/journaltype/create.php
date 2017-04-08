<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Journaltype */

$this->title = 'Create Journaltype';
$this->params['breadcrumbs'][] = ['label' => 'Journaltypes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="journaltype-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
