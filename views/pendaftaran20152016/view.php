<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Pendaftaran20152016 */

$this->title = $model->no_urut;
$this->params['breadcrumbs'][] = ['label' => 'Pendaftaran20152016s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pendaftaran20152016-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->no_urut], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->no_urut], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'no_urut',
            'no_induk:ntext',
            'nama',
            'section',
            'course',
            'course_alias',
            'tahun_ajaran',
            'gender',
            'tempat_lahir',
            'tgl_lahir',
            'alamat',
            'bloodgroup',
            'religion',
            'tgl_daftar',
            'bahasa',
            'nama_ayah',
            'nama_ibu',
            'lastedu_ayah',
            'lastedu_ibu',
            'no_hp',
            'biaya_pendaftaran',
            'tgl_bayar',
            'cicilan1',
            'tgl_cicilan1',
            'cicilan2',
            'tgl_cicilan2',
            'cicilan3',
            'tgl_cicilan3',
            'cicilan4',
            'tgl_cicilan4',
            'cicilan5',
            'tgl_cicilan5',
            'cicilan6',
            'tgl_cicilan6',
            'status_bayar',
        ],
    ]) ?>

</div>
