<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20162017 */

$this->title = 'Create Pendaftaran20162017';
$this->params['breadcrumbs'][] = ['label' => 'Pendaftaran20162017s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pendaftaran20162017-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
