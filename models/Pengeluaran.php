<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pengeluaran".
 *
 * @property integer $id_pengeluaran
 * @property string $tanggal_pengeluaran
 * @property string $keterangan_pengeluaran
 * @property integer $debit_pengeluaran
 * @property integer $kredit_pengeluaran
 * @property integer $saldo_pengeluaran
 */
class Pengeluaran extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pengeluaran';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tanggal_pengeluaran', 'keterangan_pengeluaran', 'debit_pengeluaran', 'kredit_pengeluaran', 'saldo_pengeluaran'], 'required'],
            [['tanggal_pengeluaran'], 'safe'],
            [['debit_pengeluaran', 'kredit_pengeluaran', 'saldo_pengeluaran'], 'integer'],
            [['keterangan_pengeluaran'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_pengeluaran' => 'Id Pengeluaran',
            'tanggal_pengeluaran' => 'Tanggal Pengeluaran',
            'keterangan_pengeluaran' => 'Keterangan Pengeluaran',
            'debit_pengeluaran' => 'Debit Pengeluaran',
            'kredit_pengeluaran' => 'Kredit Pengeluaran',
            'saldo_pengeluaran' => 'Saldo Pengeluaran',
        ];
    }
}
