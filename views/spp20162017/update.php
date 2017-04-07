<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Spp20162017 */

$this->title = 'Update Spp20162017: ' . ' ' . $model->no_urut;
$this->params['breadcrumbs'][] = ['label' => 'Spp20162017s', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->no_urut, 'url' => ['view', 'id' => $model->no_urut]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="spp20162017-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
