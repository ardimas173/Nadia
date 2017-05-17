<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Paymentcomponent;

/**
 * PaymentcomponentSearch represents the model behind the search form about `app\models\Paymentcomponent`.
 */
class PaymentcomponentSearch extends Paymentcomponent
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_component_id', 'status'], 'integer'],
            [['payment_component_name'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Paymentcomponent::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'payment_component_id' => $this->payment_component_id,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'payment_component_name', $this->payment_component_name]);

        return $dataProvider;
    }
}
