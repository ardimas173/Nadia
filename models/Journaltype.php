<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "journal_type".
 *
 * @property integer $journal_type_id
 * @property string $journal_type_name
 * @property string $journal_type_remark
 */
class Journaltype extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'journal_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['journal_type_name'], 'required'],
            [['journal_type_remark'], 'string'],
            [['journal_type_name'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'journal_type_id' => 'Journal Type ID',
            'journal_type_name' => 'Journal Type Name',
            'journal_type_remark' => 'Journal Type Remark',
        ];
    }
}
