<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pendaftaran20162017".
 *
 * @property integer $no_urut
 * @property string $no_induk
 * @property string $nama
 * @property string $section
 * @property string $course
 * @property string $course_alias
 * @property string $tahun_ajaran
 * @property string $gender
 * @property string $tempat_lahir
 * @property string $tgl_lahir
 * @property string $alamat
 * @property string $bloodgroup
 * @property string $religion
 * @property string $tgl_daftar
 * @property string $bahasa
 * @property string $nama_ayah
 * @property string $nama_ibu
 * @property string $lastedu_ayah
 * @property string $lastedu_ibu
 * @property string $no_hp
 * @property integer $biaya_pendaftaran
 * @property string $tgl_bayar
 * @property integer $cicilan1
 * @property string $tgl_cicilan1
 * @property integer $cicilan2
 * @property string $tgl_cicilan2
 * @property integer $cicilan3
 * @property string $tgl_cicilan3
 * @property integer $cicilan4
 * @property string $tgl_cicilan4
 * @property integer $cicilan5
 * @property string $tgl_cicilan5
 * @property integer $cicilan6
 * @property string $tgl_cicilan6
 * @property string $status_bayar
 */
class Pendaftaran20162017 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pendaftaran20162017';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no_urut', 'no_induk', 'nama', 'section', 'course', 'course_alias', 'tahun_ajaran', 'gender', 'tempat_lahir', 'tgl_lahir', 'alamat', 'bloodgroup', 'religion', 'tgl_daftar', 'bahasa', 'nama_ayah', 'nama_ibu', 'lastedu_ayah', 'lastedu_ibu', 'no_hp', 'biaya_pendaftaran', 'tgl_bayar', 'cicilan1', 'tgl_cicilan1', 'cicilan2', 'tgl_cicilan2', 'cicilan3', 'tgl_cicilan3', 'cicilan4', 'tgl_cicilan4', 'cicilan5', 'tgl_cicilan5', 'cicilan6', 'tgl_cicilan6', 'status_bayar'], 'required'],
            [['no_urut', 'biaya_pendaftaran', 'cicilan1', 'cicilan2', 'cicilan3', 'cicilan4', 'cicilan5', 'cicilan6'], 'integer'],
            [['no_induk'], 'string'],
            [['tgl_lahir', 'tgl_daftar', 'tgl_bayar', 'tgl_cicilan1', 'tgl_cicilan2', 'tgl_cicilan3', 'tgl_cicilan4', 'tgl_cicilan5', 'tgl_cicilan6'], 'safe'],
            [['nama', 'section', 'tahun_ajaran', 'status_bayar'], 'string', 'max' => 200],
            [['course', 'course_alias', 'tempat_lahir', 'religion', 'bahasa', 'nama_ayah', 'nama_ibu', 'lastedu_ayah', 'lastedu_ibu', 'no_hp'], 'string', 'max' => 50],
            [['gender'], 'string', 'max' => 10],
            [['alamat', 'bloodgroup'], 'string', 'max' => 100]
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
            'gender' => 'Gender',
            'tempat_lahir' => 'Tempat Lahir',
            'tgl_lahir' => 'Tgl Lahir',
            'alamat' => 'Alamat',
            'bloodgroup' => 'Bloodgroup',
            'religion' => 'Religion',
            'tgl_daftar' => 'Tgl Daftar',
            'bahasa' => 'Bahasa',
            'nama_ayah' => 'Nama Ayah',
            'nama_ibu' => 'Nama Ibu',
            'lastedu_ayah' => 'Lastedu Ayah',
            'lastedu_ibu' => 'Lastedu Ibu',
            'no_hp' => 'No Hp',
            'biaya_pendaftaran' => 'Biaya Pendaftaran',
            'tgl_bayar' => 'Tgl Bayar',
            'cicilan1' => 'Cicilan1',
            'tgl_cicilan1' => 'Tgl Cicilan1',
            'cicilan2' => 'Cicilan2',
            'tgl_cicilan2' => 'Tgl Cicilan2',
            'cicilan3' => 'Cicilan3',
            'tgl_cicilan3' => 'Tgl Cicilan3',
            'cicilan4' => 'Cicilan4',
            'tgl_cicilan4' => 'Tgl Cicilan4',
            'cicilan5' => 'Cicilan5',
            'tgl_cicilan5' => 'Tgl Cicilan5',
            'cicilan6' => 'Cicilan6',
            'tgl_cicilan6' => 'Tgl Cicilan6',
            'status_bayar' => 'Status Bayar',
        ];
    }
}
