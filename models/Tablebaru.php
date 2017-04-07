<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "table_baru".
 *
 * @property integer $t_id
 * @property string $keterangan
 * @property string $jumlah
 */
class Tablebaru extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'table_baru';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['keterangan', 'jumlah'], 'required'],
            [['keterangan', 'jumlah'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            't_id' => 'T ID',
            'keterangan' => 'Keterangan',
            'jumlah' => 'Jumlah',
        ];
    }
}
