<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pengeluaran;

/**
 * PengeluaranSearch represents the model behind the search form about `app\models\Pengeluaran`.
 */
class PengeluaranSearch extends Pengeluaran
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_pengeluaran', 'debit_pengeluaran', 'kredit_pengeluaran', 'saldo_pengeluaran'], 'integer'],
            [['tanggal_pengeluaran', 'keterangan_pengeluaran'], 'safe'],
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
        $query = Pengeluaran::find();

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
            'id_pengeluaran' => $this->id_pengeluaran,
            'tanggal_pengeluaran' => $this->tanggal_pengeluaran,
            'debit_pengeluaran' => $this->debit_pengeluaran,
            'kredit_pengeluaran' => $this->kredit_pengeluaran,
            'saldo_pengeluaran' => $this->saldo_pengeluaran,
        ]);

        $query->andFilterWhere(['like', 'keterangan_pengeluaran', $this->keterangan_pengeluaran]);

        return $dataProvider;
    }
}
