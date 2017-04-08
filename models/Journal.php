<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "journal".
 *
 * @property integer $journal_id
 * @property string $journal_description
 * @property string $journal_date
 * @property double $debit
 * @property double $credit
 * @property integer $journal_type_id
 * @property string $journal_remark
 */
class Journal extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'journal';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['journal_description', 'journal_date', 'journal_type_id'], 'required'],
            [['journal_description', 'journal_remark'], 'string'],
            [['journal_date'], 'safe'],
            [['debit', 'credit'], 'number'],
            [['journal_type_id'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'journal_id' => 'Journal ID',
            'journal_description' => 'Journal Description',
            'journal_date' => 'Journal Date',
            'debit' => 'Debit',
            'credit' => 'Credit',
            'journal_type_id' => 'Journal Type ID',
            'journal_remark' => 'Journal Remark',
        ];
    }
}
