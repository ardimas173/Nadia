<?php

namespace app\models;

use Yii;
use yii\base\Model;

class PaymentForm extends Model
{
    public $course;
    public $category;

    public function rules()
    {
        return [
            [['course', 'category'], 'required'],
        ];
    }

}
