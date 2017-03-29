<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Tablebaru;

/**
 * TablebaruSearch represents the model behind the search form about `app\models\Tablebaru`.
 */
class TablebaruSearch extends Tablebaru
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['t_id'], 'integer'],
            [['keterangan', 'jumlah'], 'safe'],
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
        $query = Tablebaru::find();

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
            't_id' => $this->t_id,
        ]);

        $query->andFilterWhere(['like', 'keterangan', $this->keterangan])
            ->andFilterWhere(['like', 'jumlah', $this->jumlah]);

        return $dataProvider;
    }
}
