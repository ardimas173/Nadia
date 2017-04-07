<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spp20162017".
 *
 * @property integer $no_urut
 * @property string $no_induk
 * @property string $nama
 * @property string $section
 * @property string $course
 * @property string $course_alias
 * @property integer $tahun_ajaran
 * @property string $tanggal_bayar_juli_15
 * @property string $debit_julli_15
 * @property string $tanggal_bayar_agustus_15
 * @property string $debit_agustus_15
 * @property string $tanggal_bayar_sept_15
 * @property string $spp_sept_15
 * @property string $tanggal_bayar_oktober_15
 * @property string $spp_oktober_15
 * @property string $tanggal_bayar_november_15
 * @property string $spp_november_15
 * @property string $tanggal_bayar_desember_15
 * @property string $spp_desember_15
 * @property string $tanggal_bayar_januari_16
 * @property string $spp_januari_16
 * @property string $tanggal_bayar_februari_16
 * @property string $spp_februari_16
 * @property string $tanggal_bayar_maret_16
 * @property string $spp_maret_16
 * @property string $tanggal_bayar_april_16
 * @property string $spp_april_16
 * @property string $tanggal_bayar_mei_16
 * @property string $spp_mei_16
 * @property string $tanggal_bayar_juni_16
 * @property string $spp_juni_16
 */
class Spp20162017 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spp20162017';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no_induk', 'nama', 'section', 'course', 'course_alias', 'tahun_ajaran', 'debit_julli_15', 'debit_agustus_15', 'spp_sept_15', 'spp_oktober_15', 'spp_november_15', 'spp_desember_15', 'spp_januari_16', 'spp_februari_16', 'spp_maret_16', 'spp_april_16', 'spp_mei_16', 'spp_juni_16'], 'required'],
            [['no_induk'], 'string'],
            [['tahun_ajaran'], 'integer'],
            [['tanggal_bayar_juli_15', 'tanggal_bayar_agustus_15', 'tanggal_bayar_sept_15', 'tanggal_bayar_oktober_15', 'tanggal_bayar_november_15', 'tanggal_bayar_desember_15', 'tanggal_bayar_januari_16', 'tanggal_bayar_februari_16', 'tanggal_bayar_maret_16', 'tanggal_bayar_april_16', 'tanggal_bayar_mei_16', 'tanggal_bayar_juni_16'], 'safe'],
            [['nama', 'debit_julli_15', 'debit_agustus_15', 'spp_sept_15', 'spp_oktober_15', 'spp_november_15', 'spp_desember_15', 'spp_januari_16', 'spp_februari_16', 'spp_maret_16', 'spp_april_16', 'spp_mei_16', 'spp_juni_16'], 'string', 'max' => 100],
            [['section', 'course', 'course_alias'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'no_urut' => 'No Urut',
            'no_induk' => 'No Induk',
            'nama' => 'Nama',
            'section' => 'Section',
            'course' => 'Course',
            'course_alias' => 'Course Alias',
            'tahun_ajaran' => 'Tahun Ajaran',
            'tanggal_bayar_juli_15' => 'Tanggal Bayar Juli 15',
            'debit_julli_15' => 'Debit Julli 15',
            'tanggal_bayar_agustus_15' => 'Tanggal Bayar Agustus 15',
            'debit_agustus_15' => 'Debit Agustus 15',
            'tanggal_bayar_sept_15' => 'Tanggal Bayar Sept 15',
            'spp_sept_15' => 'Spp Sept 15',
            'tanggal_bayar_oktober_15' => 'Tanggal Bayar Oktober 15',
            'spp_oktober_15' => 'Spp Oktober 15',
            'tanggal_bayar_november_15' => 'Tanggal Bayar November 15',
            'spp_november_15' => 'Spp November 15',
            'tanggal_bayar_desember_15' => 'Tanggal Bayar Desember 15',
            'spp_desember_15' => 'Spp Desember 15',
            'tanggal_bayar_januari_16' => 'Tanggal Bayar Januari 16',
            'spp_januari_16' => 'Spp Januari 16',
            'tanggal_bayar_februari_16' => 'Tanggal Bayar Februari 16',
            'spp_februari_16' => 'Spp Februari 16',
            'tanggal_bayar_maret_16' => 'Tanggal Bayar Maret 16',
            'spp_maret_16' => 'Spp Maret 16',
            'tanggal_bayar_april_16' => 'Tanggal Bayar April 16',
            'spp_april_16' => 'Spp April 16',
            'tanggal_bayar_mei_16' => 'Tanggal Bayar Mei 16',
            'spp_mei_16' => 'Spp Mei 16',
            'tanggal_bayar_juni_16' => 'Tanggal Bayar Juni 16',
            'spp_juni_16' => 'Spp Juni 16',
        ];
    }
}
