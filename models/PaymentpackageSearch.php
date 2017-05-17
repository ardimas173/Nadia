<?php

namespace app\models;

use app\modules\course\models\Batches;
use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Paymentpackage;

/**
 * PaymentpackageSearch represents the model behind the search form about `app\models\Paymentpackage`.
 */
class PaymentpackageSearch extends Paymentpackage
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_package_id', 'batch_id', 'course_id'], 'integer'],
            [['payment_package_name'], 'safe'],
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
        $query = Paymentpackage::find()->where(['batch_id'=>Batches::findActive()]);

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
            'payment_package_id' => $this->payment_package_id,
            'batch_id' => $this->batch_id,
            'course_id' => $this->course_id,
        ]);

        $query->andFilterWhere(['like', 'payment_package_name', $this->payment_package_name]);

        return $dataProvider;
    }
}
