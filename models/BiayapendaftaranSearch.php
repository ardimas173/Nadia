<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Biayapendaftaran;

/**
 * BiayapendaftaranSearch represents the model behind the search form about `app\models\Biayapendaftaran`.
 */
class BiayapendaftaranSearch extends Biayapendaftaran
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pay_id', 'biaya', 'cicilan1', 'cicilan2', 'cicilan3', 'cicilan4', 'cicilan5', 'cicilan6', 'total'], 'integer'],
            [['nama', 'section', 'tgl_daftar', 'tgl_cicilan1', 'tgl_cicilan2', 'tgl_cicilan3', 'tgl_cicilan4', 'tgl_cicilan5', 'tgl_cicilan6', 'ket'], 'safe'],
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
        $query = Biayapendaftaran::find();

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
            'pay_id' => $this->pay_id,
            'tgl_daftar' => $this->tgl_daftar,
            'biaya' => $this->biaya,
            'tgl_cicilan1' => $this->tgl_cicilan1,
            'cicilan1' => $this->cicilan1,
            'tgl_cicilan2' => $this->tgl_cicilan2,
            'cicilan2' => $this->cicilan2,
            'tgl_cicilan3' => $this->tgl_cicilan3,
            'cicilan3' => $this->cicilan3,
            'tgl_cicilan4' => $this->tgl_cicilan4,
            'cicilan4' => $this->cicilan4,
            'tgl_cicilan5' => $this->tgl_cicilan5,
            'cicilan5' => $this->cicilan5,
            'tgl_cicilan6' => $this->tgl_cicilan6,
            'cicilan6' => $this->cicilan6,
            'total' => $this->total,
        ]);

        $query->andFilterWhere(['like', 'nama', $this->nama])
            ->andFilterWhere(['like', 'section', $this->section])
            ->andFilterWhere(['like', 'ket', $this->ket]);

        return $dataProvider;
    }
}
