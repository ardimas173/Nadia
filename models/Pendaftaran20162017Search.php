<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Pendaftaran20162017;

/**
 * Pendaftaran20162017Search represents the model behind the search form about `app\models\Pendaftaran20162017`.
 */
class Pendaftaran20162017Search extends Pendaftaran20162017
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no_urut', 'biaya_pendaftaran', 'cicilan1', 'cicilan2', 'cicilan3', 'cicilan4', 'cicilan5', 'cicilan6'], 'integer'],
            [['no_induk', 'nama', 'section', 'course', 'course_alias', 'tahun_ajaran', 'gender', 'tempat_lahir', 'tgl_lahir', 'alamat', 'bloodgroup', 'religion', 'tgl_daftar', 'bahasa', 'nama_ayah', 'nama_ibu', 'lastedu_ayah', 'lastedu_ibu', 'no_hp', 'tgl_bayar', 'tgl_cicilan1', 'tgl_cicilan2', 'tgl_cicilan3', 'tgl_cicilan4', 'tgl_cicilan5', 'tgl_cicilan6', 'status_bayar'], 'safe'],
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
        $query = Pendaftaran20162017::find();

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
            'tgl_lahir' => $this->tgl_lahir,
            'tgl_daftar' => $this->tgl_daftar,
            'biaya_pendaftaran' => $this->biaya_pendaftaran,
            'tgl_bayar' => $this->tgl_bayar,
            'cicilan1' => $this->cicilan1,
            'tgl_cicilan1' => $this->tgl_cicilan1,
            'cicilan2' => $this->cicilan2,
            'tgl_cicilan2' => $this->tgl_cicilan2,
            'cicilan3' => $this->cicilan3,
            'tgl_cicilan3' => $this->tgl_cicilan3,
            'cicilan4' => $this->cicilan4,
            'tgl_cicilan4' => $this->tgl_cicilan4,
            'cicilan5' => $this->cicilan5,
            'tgl_cicilan5' => $this->tgl_cicilan5,
            'cicilan6' => $this->cicilan6,
            'tgl_cicilan6' => $this->tgl_cicilan6,
        ]);

        $query->andFilterWhere(['like', 'no_induk', $this->no_induk])
            ->andFilterWhere(['like', 'nama', $this->nama])
            ->andFilterWhere(['like', 'section', $this->section])
            ->andFilterWhere(['like', 'course', $this->course])
            ->andFilterWhere(['like', 'course_alias', $this->course_alias])
            ->andFilterWhere(['like', 'tahun_ajaran', $this->tahun_ajaran])
            ->andFilterWhere(['like', 'gender', $this->gender])
            ->andFilterWhere(['like', 'tempat_lahir', $this->tempat_lahir])
            ->andFilterWhere(['like', 'alamat', $this->alamat])
            ->andFilterWhere(['like', 'bloodgroup', $this->bloodgroup])
            ->andFilterWhere(['like', 'religion', $this->religion])
            ->andFilterWhere(['like', 'bahasa', $this->bahasa])
            ->andFilterWhere(['like', 'nama_ayah', $this->nama_ayah])
            ->andFilterWhere(['like', 'nama_ibu', $this->nama_ibu])
            ->andFilterWhere(['like', 'lastedu_ayah', $this->lastedu_ayah])
            ->andFilterWhere(['like', 'lastedu_ibu', $this->lastedu_ibu])
            ->andFilterWhere(['like', 'no_hp', $this->no_hp])
            ->andFilterWhere(['like', 'status_bayar', $this->status_bayar]);

        return $dataProvider;
    }
}
