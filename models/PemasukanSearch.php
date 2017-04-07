<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pemasukan;

/**
 * PemasukanSearch represents the model behind the search form about `app\models\Pemasukan`.
 */
class PemasukanSearch extends Pemasukan
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['income_id', 'debit_pemasukan', 'kredit_pemasukan', 'saldo_pemasukan'], 'integer'],
            [['income_date', 'income_explanation'], 'safe'],
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
        $query = Pemasukan::find();

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
            'income_id' => $this->income_id,
            'income_date' => $this->income_date,
            'debit_pemasukan' => $this->debit_pemasukan,
            'kredit_pemasukan' => $this->kredit_pemasukan,
            'saldo_pemasukan' => $this->saldo_pemasukan,
        ]);

        $query->andFilterWhere(['like', 'income_explanation', $this->income_explanation]);

        return $dataProvider;
    }
}
