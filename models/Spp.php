<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spp".
 *
 * @property integer $SPP_ID
 * @property string $NAMA
 * @property string $DATE_PAY_JULI_15
 * @property string $DEBIT_JULI_15
 * @property string $DATE_PAY_AGUST_15
 * @property string $DEBIT_AGUST_15
 * @property string $DATE_PAY_SEPT_15
 * @property string $DEBIT_SEPT_15
 * @property string $DATE_PAY_OKT_15
 * @property string $DEBIT_OKT_15
 * @property string $DATE_PAY_NOV_15
 * @property string $DEBIT_NOV_15
 * @property string $DATE_PAY_DES_15
 * @property string $DEBIT_DES_15
 * @property string $DATE_PAY_JAN_16
 * @property string $DEBIT_JAN_16
 * @property string $DATE_PAY_FEB_16
 * @property string $DEBIT_FEB_16
 * @property string $DATE_PAY_MAR_16
 * @property string $DEBIT_MAR_16
 * @property string $DATE_PAY_APR_16
 * @property string $DEBIT_APR_16
 * @property string $DATE_PAY_MEI_16
 * @property string $DEBIT_MEI_16
 * @property string $DATE_PAY_JUNI_16
 * @property string $DEBIT_JUNI_16
 * @property integer $SALDO
 * @property string $KETERANGAN
 */
class Spp extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spp';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['NAMA', 'DEBIT_JULI_15', 'DEBIT_AGUST_15', 'DEBIT_SEPT_15', 'DEBIT_OKT_15', 'DEBIT_NOV_15', 'DEBIT_DES_15', 'DEBIT_JAN_16', 'DEBIT_FEB_16', 'DEBIT_MAR_16', 'DEBIT_APR_16', 'DEBIT_MEI_16', 'DEBIT_JUNI_16', 'SALDO', 'KETERANGAN'], 'required'],
            [['DATE_PAY_JULI_15', 'DATE_PAY_AGUST_15', 'DATE_PAY_SEPT_15', 'DATE_PAY_OKT_15', 'DATE_PAY_NOV_15', 'DATE_PAY_DES_15', 'DATE_PAY_JAN_16', 'DATE_PAY_FEB_16', 'DATE_PAY_MAR_16', 'DATE_PAY_APR_16', 'DATE_PAY_MEI_16', 'DATE_PAY_JUNI_16'], 'safe'],
            [['SALDO'], 'integer'],
            [['NAMA', 'DEBIT_JULI_15', 'DEBIT_AGUST_15', 'DEBIT_SEPT_15', 'DEBIT_OKT_15', 'DEBIT_NOV_15', 'DEBIT_DES_15', 'DEBIT_JAN_16', 'DEBIT_FEB_16', 'DEBIT_MAR_16', 'DEBIT_APR_16', 'DEBIT_MEI_16', 'DEBIT_JUNI_16', 'KETERANGAN'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SPP_ID' => 'Spp  ID',
            'NAMA' => 'Nama',
            'DATE_PAY_JULI_15' => 'Date  Pay  Juli 15',
            'DEBIT_JULI_15' => 'Debit  Juli 15',
            'DATE_PAY_AGUST_15' => 'Date  Pay  Agust 15',
            'DEBIT_AGUST_15' => 'Debit  Agust 15',
            'DATE_PAY_SEPT_15' => 'Date  Pay  Sept 15',
            'DEBIT_SEPT_15' => 'Debit  Sept 15',
            'DATE_PAY_OKT_15' => 'Date  Pay  Okt 15',
            'DEBIT_OKT_15' => 'Debit  Okt 15',
            'DATE_PAY_NOV_15' => 'Date  Pay  Nov 15',
            'DEBIT_NOV_15' => 'Debit  Nov 15',
            'DATE_PAY_DES_15' => 'Date  Pay  Des 15',
            'DEBIT_DES_15' => 'Debit  Des 15',
            'DATE_PAY_JAN_16' => 'Date  Pay  Jan 16',
            'DEBIT_JAN_16' => 'Debit  Jan 16',
            'DATE_PAY_FEB_16' => 'Date  Pay  Feb 16',
            'DEBIT_FEB_16' => 'Debit  Feb 16',
            'DATE_PAY_MAR_16' => 'Date  Pay  Mar 16',
            'DEBIT_MAR_16' => 'Debit  Mar 16',
            'DATE_PAY_APR_16' => 'Date  Pay  Apr 16',
            'DEBIT_APR_16' => 'Debit  Apr 16',
            'DATE_PAY_MEI_16' => 'Date  Pay  Mei 16',
            'DEBIT_MEI_16' => 'Debit  Mei 16',
            'DATE_PAY_JUNI_16' => 'Date  Pay  Juni 16',
            'DEBIT_JUNI_16' => 'Debit  Juni 16',
            'SALDO' => 'Saldo',
            'KETERANGAN' => 'Keterangan',
        ];
    }
}
