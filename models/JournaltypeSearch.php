<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Journaltype;

/**
 * JournaltypeSearch represents the model behind the search form about `app\models\Journaltype`.
 */
class JournaltypeSearch extends Journaltype
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['journal_type_id'], 'integer'],
            [['journal_type_name', 'journal_type_remark'], 'safe'],
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
        $query = Journaltype::find();

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
            'journal_type_id' => $this->journal_type_id,
        ]);

        $query->andFilterWhere(['like', 'journal_type_name', $this->journal_type_name])
            ->andFilterWhere(['like', 'journal_type_remark', $this->journal_type_remark]);

        return $dataProvider;
    }
}
