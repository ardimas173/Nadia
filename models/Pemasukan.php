<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pemasukan".
 *
 * @property integer $income_id
 * @property string $income_date
 * @property string $income_explanation
 * @property integer $debit_pemasukan
 * @property integer $kredit_pemasukan
 * @property integer $saldo_pemasukan
 */
class Pemasukan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pemasukan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['income_date', 'income_explanation', 'debit_pemasukan', 'kredit_pemasukan', 'saldo_pemasukan'], 'required'],
            [['income_date'], 'safe'],
            [['debit_pemasukan', 'kredit_pemasukan', 'saldo_pemasukan'], 'integer'],
            [['income_explanation'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'income_id' => 'Income ID',
            'income_date' => 'Income Date',
            'income_explanation' => 'Income Explanation',
            'debit_pemasukan' => 'Debit Pemasukan',
            'kredit_pemasukan' => 'Kredit Pemasukan',
            'saldo_pemasukan' => 'Saldo Pemasukan',
        ];
    }
}
