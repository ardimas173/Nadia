<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Spp20152016 */

$this->title = 'Create Spp20152016';
$this->params['breadcrumbs'][] = ['label' => 'Spp20152016s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp20152016-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
