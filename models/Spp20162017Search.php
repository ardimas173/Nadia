<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Spp20162017;

/**
 * Spp20162017Search represents the model behind the search form about `app\models\Spp20162017`.
 */
class Spp20162017Search extends Spp20162017
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no_urut', 'tahun_ajaran'], 'integer'],
            [['no_induk', 'nama', 'section', 'course', 'course_alias', 'tanggal_bayar_juli_15', 'debit_julli_15', 'tanggal_bayar_agustus_15', 'debit_agustus_15', 'tanggal_bayar_sept_15', 'spp_sept_15', 'tanggal_bayar_oktober_15', 'spp_oktober_15', 'tanggal_bayar_november_15', 'spp_november_15', 'tanggal_bayar_desember_15', 'spp_desember_15', 'tanggal_bayar_januari_16', 'spp_januari_16', 'tanggal_bayar_februari_16', 'spp_februari_16', 'tanggal_bayar_maret_16', 'spp_maret_16', 'tanggal_bayar_april_16', 'spp_april_16', 'tanggal_bayar_mei_16', 'spp_mei_16', 'tanggal_bayar_juni_16', 'spp_juni_16'], 'safe'],
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
        $query = Spp20162017::find();

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
            'no_urut' => $this->no_urut,
            'tahun_ajaran' => $this->tahun_ajaran,
            'tanggal_bayar_juli_15' => $this->tanggal_bayar_juli_15,
            'tanggal_bayar_agustus_15' => $this->tanggal_bayar_agustus_15,
            'tanggal_bayar_sept_15' => $this->tanggal_bayar_sept_15,
            'tanggal_bayar_oktober_15' => $this->tanggal_bayar_oktober_15,
            'tanggal_bayar_november_15' => $this->tanggal_bayar_november_15,
            'tanggal_bayar_desember_15' => $this->tanggal_bayar_desember_15,
            'tanggal_bayar_januari_16' => $this->tanggal_bayar_januari_16,
            'tanggal_bayar_februari_16' => $this->tanggal_bayar_februari_16,
            'tanggal_bayar_maret_16' => $this->tanggal_bayar_maret_16,
            'tanggal_bayar_april_16' => $this->tanggal_bayar_april_16,
            'tanggal_bayar_mei_16' => $this->tanggal_bayar_mei_16,
            'tanggal_bayar_juni_16' => $this->tanggal_bayar_juni_16,
        ]);

        $query->andFilterWhere(['like', 'no_induk', $this->no_induk])
            ->andFilterWhere(['like', 'nama', $this->nama])
            ->andFilterWhere(['like', 'section', $this->section])
            ->andFilterWhere(['like', 'course', $this->course])
            ->andFilterWhere(['like', 'course_alias', $this->course_alias])
            ->andFilterWhere(['like', 'debit_julli_15', $this->debit_julli_15])
            ->andFilterWhere(['like', 'debit_agustus_15', $this->debit_agustus_15])
            ->andFilterWhere(['like', 'spp_sept_15', $this->spp_sept_15])
            ->andFilterWhere(['like', 'spp_oktober_15', $this->spp_oktober_15])
            ->andFilterWhere(['like', 'spp_november_15', $this->spp_november_15])
            ->andFilterWhere(['like', 'spp_desember_15', $this->spp_desember_15])
            ->andFilterWhere(['like', 'spp_januari_16', $this->spp_januari_16])
            ->andFilterWhere(['like', 'spp_februari_16', $this->spp_februari_16])
            ->andFilterWhere(['like', 'spp_maret_16', $this->spp_maret_16])
            ->andFilterWhere(['like', 'spp_april_16', $this->spp_april_16])
            ->andFilterWhere(['like', 'spp_mei_16', $this->spp_mei_16])
            ->andFilterWhere(['like', 'spp_juni_16', $this->spp_juni_16]);

        return $dataProvider;
    }
}
