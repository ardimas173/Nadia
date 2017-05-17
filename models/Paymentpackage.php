<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "payment_package".
 *
 * @property integer $payment_package_id
 * @property string $payment_package_name
 * @property integer $batch_id
 * @property integer $course_id
 */
class Paymentpackage extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment_package';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_package_name', 'batch_id', 'course_id'], 'required'],
            [['batch_id', 'course_id'], 'integer'],
            [['payment_package_name'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'payment_package_id' => 'Payment Package ID',
            'payment_package_name' => 'Payment Package Name',
            'batch_id' => 'Batch ID',
            'course_id' => 'Course ID',
        ];
    }
}
