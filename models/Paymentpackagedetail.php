<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "payment_package_detail".
 *
 * @property integer $payment_package_detail_id
 * @property integer $payment_package_id
 * @property integer $payment_component_id
 * @property integer $amount
 * @property integer $status
 */
class Paymentpackagedetail extends \yii\db\ActiveRecord
{
    public function getComponent()
    {
        return $this->hasOne(Paymentcomponent::className(),['payment_component_id'=>'payment_component_id']);
    }

    public function getPackage()
    {
        return $this->hasOne(Paymentpackage::className(),['payment_package_id'=>'payment_package_id']);
    }


    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment_package_detail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_package_id', 'payment_component_id', 'amount'], 'required'],
            [['payment_package_name','payment_component_name'], 'safe'],
            [['payment_package_id', 'payment_component_id', 'amount', 'status'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'payment_package_detail_id' => 'Payment Package Detail ID',
            'payment_package_id' => 'Payment Package ID',
            'payment_component_id' => 'Payment Component ID',
            'amount' => 'Amount',
            'status' => 'Status',
        ];
    }
}
