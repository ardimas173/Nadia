<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20152016 */

$this->title = 'Create Pendaftaran20152016';
$this->params['breadcrumbs'][] = ['label' => 'Pendaftaran20152016s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pendaftaran20152016-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
