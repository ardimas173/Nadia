<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Spp */

$this->title = 'Create Spp';
$this->params['breadcrumbs'][] = ['label' => 'Spps', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
