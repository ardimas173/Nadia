<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Spp;

/**
 * SppSearch represents the model behind the search form about `app\models\Spp`.
 */
class SppSearch extends Spp
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['SPP_ID', 'SALDO'], 'integer'],
            [['NAMA', 'DATE_PAY_JULI_15', 'DEBIT_JULI_15', 'DATE_PAY_AGUST_15', 'DEBIT_AGUST_15', 'DATE_PAY_SEPT_15', 'DEBIT_SEPT_15', 'DATE_PAY_OKT_15', 'DEBIT_OKT_15', 'DATE_PAY_NOV_15', 'DEBIT_NOV_15', 'DATE_PAY_DES_15', 'DEBIT_DES_15', 'DATE_PAY_JAN_16', 'DEBIT_JAN_16', 'DATE_PAY_FEB_16', 'DEBIT_FEB_16', 'DATE_PAY_MAR_16', 'DEBIT_MAR_16', 'DATE_PAY_APR_16', 'DEBIT_APR_16', 'DATE_PAY_MEI_16', 'DEBIT_MEI_16', 'DATE_PAY_JUNI_16', 'DEBIT_JUNI_16', 'KETERANGAN'], 'safe'],
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
        $query = Spp::find();

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
            'SPP_ID' => $this->SPP_ID,
            'DATE_PAY_JULI_15' => $this->DATE_PAY_JULI_15,
            'DATE_PAY_AGUST_15' => $this->DATE_PAY_AGUST_15,
            'DATE_PAY_SEPT_15' => $this->DATE_PAY_SEPT_15,
            'DATE_PAY_OKT_15' => $this->DATE_PAY_OKT_15,
            'DATE_PAY_NOV_15' => $this->DATE_PAY_NOV_15,
            'DATE_PAY_DES_15' => $this->DATE_PAY_DES_15,
            'DATE_PAY_JAN_16' => $this->DATE_PAY_JAN_16,
            'DATE_PAY_FEB_16' => $this->DATE_PAY_FEB_16,
            'DATE_PAY_MAR_16' => $this->DATE_PAY_MAR_16,
            'DATE_PAY_APR_16' => $this->DATE_PAY_APR_16,
            'DATE_PAY_MEI_16' => $this->DATE_PAY_MEI_16,
            'DATE_PAY_JUNI_16' => $this->DATE_PAY_JUNI_16,
            'SALDO' => $this->SALDO,
        ]);

        $query->andFilterWhere(['like', 'NAMA', $this->NAMA])
            ->andFilterWhere(['like', 'DEBIT_JULI_15', $this->DEBIT_JULI_15])
            ->andFilterWhere(['like', 'DEBIT_AGUST_15', $this->DEBIT_AGUST_15])
            ->andFilterWhere(['like', 'DEBIT_SEPT_15', $this->DEBIT_SEPT_15])
            ->andFilterWhere(['like', 'DEBIT_OKT_15', $this->DEBIT_OKT_15])
            ->andFilterWhere(['like', 'DEBIT_NOV_15', $this->DEBIT_NOV_15])
            ->andFilterWhere(['like', 'DEBIT_DES_15', $this->DEBIT_DES_15])
            ->andFilterWhere(['like', 'DEBIT_JAN_16', $this->DEBIT_JAN_16])
            ->andFilterWhere(['like', 'DEBIT_FEB_16', $this->DEBIT_FEB_16])
            ->andFilterWhere(['like', 'DEBIT_MAR_16', $this->DEBIT_MAR_16])
            ->andFilterWhere(['like', 'DEBIT_APR_16', $this->DEBIT_APR_16])
            ->andFilterWhere(['like', 'DEBIT_MEI_16', $this->DEBIT_MEI_16])
            ->andFilterWhere(['like', 'DEBIT_JUNI_16', $this->DEBIT_JUNI_16])
            ->andFilterWhere(['like', 'KETERANGAN', $this->KETERANGAN]);

        return $dataProvider;
    }
}
