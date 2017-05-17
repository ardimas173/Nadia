<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "payment_component".
 *
 * @property integer $payment_component_id
 * @property string $payment_component_name
 * @property integer $status
 */
class Paymentcomponent extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment_component';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_component_name'], 'required'],
            [['status'], 'integer'],
            [['payment_component_name'], 'string', 'max' => 200]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'payment_component_id' => 'Payment Component ID',
            'payment_component_name' => 'Payment Component Name',
            'status' => 'Status',
        ];
    }
}
