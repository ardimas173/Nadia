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
    public static function hitung($cat)
    {
        //    fees_pay_tran_id            auto
        //    fees_pay_tran_collect_id    payment_package_detail_id
        //    fees_pay_tran_stu_id        stu_info_id
        //    fees_pay_tran_batch_id      batch_id
        //    fees_pay_tran_course_id     course_id
        //    fees_pay_tran_section_id    section_id
        //    fees_pay_tran_mode
        //    fees_pay_tran_cheque_no     checkno
        //    fees_pay_tran_cheque_date   checkdate
        //    fees_pay_tran_bank_id       bank_master_id
        //    fees_pay_tran_bank_branch
        //    fees_pay_tran_amount        amount
        //    fees_pay_tran_date          trans_date
        //    created_at                  created_at
        //    created_by                  created_by
        //    update_at                   update_at
        //    update_by                   update_by
        //    is_status                   is_status
        //  category = paymentpacckageid
    }

    public function getComponent()
    {
        return $this->hasOne(Paymentcomponent::className(),['payment_component_id'=>'payment_component_id']);
    }

    public function getPackage()
    {
        return $this->hasOne(Paymentpackage::className(),['payment_package_id'=>'payment_package_id']);
    }

    public static function getAmountByID($comp_id,$category_id)
    {
        $result = Paymentpackagedetail::find()->where(['payment_component_id'=>$comp_id,'payment_package_id'=>$category_id])->one();
        if($result)
            return $result->amount;
        else return 0;
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
