<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "biaya_pendaftaran".
 *
 * @property integer $pay_id
 * @property string $nama
 * @property string $section
 * @property string $tgl_daftar
 * @property integer $biaya
 * @property string $tgl_cicilan1
 * @property integer $cicilan1
 * @property string $tgl_cicilan2
 * @property integer $cicilan2
 * @property string $tgl_cicilan3
 * @property integer $cicilan3
 * @property string $tgl_cicilan4
 * @property integer $cicilan4
 * @property string $tgl_cicilan5
 * @property integer $cicilan5
 * @property string $tgl_cicilan6
 * @property integer $cicilan6
 * @property integer $total
 * @property string $ket
 */
class Biayapendaftaran extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'biaya_pendaftaran';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pay_id', 'nama', 'section', 'tgl_daftar', 'biaya', 'tgl_cicilan1', 'cicilan1', 'tgl_cicilan2', 'cicilan2', 'tgl_cicilan3', 'cicilan3', 'tgl_cicilan4', 'cicilan4', 'tgl_cicilan5', 'cicilan5', 'tgl_cicilan6', 'cicilan6', 'total', 'ket'], 'required'],
            [['pay_id', 'biaya', 'cicilan1', 'cicilan2', 'cicilan3', 'cicilan4', 'cicilan5', 'cicilan6', 'total'], 'integer'],
            [['tgl_daftar', 'tgl_cicilan1', 'tgl_cicilan2', 'tgl_cicilan3', 'tgl_cicilan4', 'tgl_cicilan5', 'tgl_cicilan6'], 'safe'],
            [['nama', 'section', 'ket'], 'string', 'max' => 200]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pay_id' => 'Pay ID',
            'nama' => 'Nama',
            'section' => 'Section',
            'tgl_daftar' => 'Tgl Daftar',
            'biaya' => 'Biaya',
            'tgl_cicilan1' => 'Tgl Cicilan1',
            'cicilan1' => 'Cicilan1',
            'tgl_cicilan2' => 'Tgl Cicilan2',
            'cicilan2' => 'Cicilan2',
            'tgl_cicilan3' => 'Tgl Cicilan3',
            'cicilan3' => 'Cicilan3',
            'tgl_cicilan4' => 'Tgl Cicilan4',
            'cicilan4' => 'Cicilan4',
            'tgl_cicilan5' => 'Tgl Cicilan5',
            'cicilan5' => 'Cicilan5',
            'tgl_cicilan6' => 'Tgl Cicilan6',
            'cicilan6' => 'Cicilan6',
            'total' => 'Total',
            'ket' => 'Ket',
        ];
    }
}
