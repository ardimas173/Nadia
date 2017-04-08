<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Journal;

/**
 * JournalSearch represents the model behind the search form about `app\models\Journal`.
 */
class JournalSearch extends Journal
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['journal_id', 'journal_type_id'], 'integer'],
            [['journal_description', 'journal_date', 'journal_remark'], 'safe'],
            [['debit', 'credit'], 'number'],
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
        $query = Journal::find();

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
            'journal_id' => $this->journal_id,
            'journal_date' => $this->journal_date,
            'debit' => $this->debit,
            'credit' => $this->credit,
            'journal_type_id' => $this->journal_type_id,
        ]);

        $query->andFilterWhere(['like', 'journal_description', $this->journal_description])
            ->andFilterWhere(['like', 'journal_remark', $this->journal_remark]);

        return $dataProvider;
    }
}
