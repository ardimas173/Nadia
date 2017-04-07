<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Biayapendaftaran */

$this->title = 'Create Biayapendaftaran';
$this->params['breadcrumbs'][] = ['label' => 'Biayapendaftarans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="biayapendaftaran-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
