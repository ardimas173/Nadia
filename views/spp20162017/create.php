<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Spp20162017 */

$this->title = 'Create Spp20162017';
$this->params['breadcrumbs'][] = ['label' => 'Spp20162017s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spp20162017-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
