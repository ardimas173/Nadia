<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Paymentpackagedetail;

/**
 * PaymentpackagedetailSearch represents the model behind the search form about `app\models\Paymentpackagedetail`.
 */
class PaymentpackagedetailSearch extends Paymentpackagedetail
{
    public $payment_package_name;
    public $payment_component_name;

    public function rules()
    {
        return [
            [['payment_package_detail_id', 'payment_package_id', 'payment_component_id', 'amount', 'status'], 'integer'],
            [['payment_package_name','payment_component_name'], 'safe'],
        ];
    }

    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }


    public function search($params)
    {
        $query = Paymentpackagedetail::find()->joinWith(['package','component']);

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);


        $dataProvider->sort->attributes['payment_package_name'] = [
            'asc' => ['payment_package.payment_package_name' => SORT_ASC],
            'desc' => ['payment_package.payment_package_name' => SORT_DESC],
        ];

        $dataProvider->sort->attributes['payment_component_name'] = [
            'asc' => ['payment_component.payment_component_name' => SORT_ASC],
            'desc' => ['payment_component.payment_component_name' => SORT_DESC],
        ];

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'payment_package_detail_id' => $this->payment_package_detail_id,
            'payment_package_id' => $this->payment_package_id,
            'payment_component_id' => $this->payment_component_id,
            'amount' => $this->amount,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'payment_package.payment_package_name', $this->payment_package_name])
        ->andFilterWhere(['like', 'payment_component.payment_component_name', $this->payment_component_name]);

        return $dataProvider;
    }
}
