<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "stu_master2".
 *
 * @property integer $stu_master_id
 * @property integer $stu_master_stu_info_id
 * @property integer $stu_master_user_id
 * @property integer $stu_master_nationality_id
 * @property integer $stu_master_category_id
 * @property integer $stu_master_course_id
 * @property integer $stu_master_batch_id
 * @property integer $stu_master_section_id
 * @property integer $stu_master_stu_status_id
 * @property integer $stu_master_stu_address_id
 * @property string $created_at
 * @property integer $created_by
 * @property string $updated_at
 * @property integer $updated_by
 * @property integer $is_status
 */
class StuMaster2 extends \yii\db\ActiveRecord
{

    public static function getDb()
    {
        return Yii::$app->get('db2');
    }


    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'stu_master2';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['stu_master_id', 'stu_master_stu_info_id', 'stu_master_user_id', 'stu_master_nationality_id', 'stu_master_category_id', 'stu_master_course_id', 'stu_master_batch_id', 'stu_master_section_id', 'stu_master_stu_status_id', 'stu_master_stu_address_id', 'created_by', 'updated_by', 'is_status'], 'integer'],
            [['stu_master_stu_info_id', 'stu_master_user_id', 'stu_master_course_id', 'stu_master_batch_id', 'stu_master_section_id', 'stu_master_stu_address_id', 'created_at', 'created_by'], 'required'],
            [['created_at', 'updated_at'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'stu_master_id' => 'Stu Master ID',
            'stu_master_stu_info_id' => 'Stu Master Stu Info ID',
            'stu_master_user_id' => 'Stu Master User ID',
            'stu_master_nationality_id' => 'Stu Master Nationality ID',
            'stu_master_category_id' => 'Stu Master Category ID',
            'stu_master_course_id' => 'Stu Master Course ID',
            'stu_master_batch_id' => 'Stu Master Batch ID',
            'stu_master_section_id' => 'Stu Master Section ID',
            'stu_master_stu_status_id' => 'Stu Master Stu Status ID',
            'stu_master_stu_address_id' => 'Stu Master Stu Address ID',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
            'is_status' => 'Is Status',
        ];
    }
}
