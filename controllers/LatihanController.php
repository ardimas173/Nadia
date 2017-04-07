<?php

/*****************************************************************************************
 * EduSec  Open Source Edition is a School / College management system developed by
 * RUDRA SOFTECH. Copyright (C) 2010-2015 RUDRA SOFTECH.

 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see http://www.gnu.org/licenses.

 * You can contact RUDRA SOFTECH, 1st floor Geeta Ceramics,
 * Opp. Thakkarnagar BRTS station, Ahmedbad - 382350, India or
 * at email address info@rudrasoftech.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.

 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * RUDRA SOFTECH" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by RUDRA SOFTECH".
 *****************************************************************************************/

/**
 * CityController implements the CRUD actions for City model.
 */

namespace app\controllers;

use app\models\Biayapendaftaran;
use app\models\Pendaftaran20152016;
use app\modules\student\models\StuAddress;
use app\modules\student\models\StuGuardians;
use app\modules\student\models\StuInfo;
use app\modules\student\models\StuMaster;
use Yii;
use yii\web\Controller;

class LatihanController extends Controller
{

    public function actionPertama()
    {
        return $this->render('pertama');
    }

    public function actionKedua()
    {
        return $this->render('kedua');
    }


    public function actionAddadmin()
    {
        $sql = "truncate table stu_info";
        Yii::$app->db->createCommand($sql)->execute();
        $s = new StuInfo();
        $s->save(false);
        $s->delete();
        $sql = "truncate table stu_master";
        Yii::$app->db->createCommand($sql)->execute();
        $m = new StuMaster();
        $m->save(false);
        $m->delete();
        $sql = "truncate table stu_address";
        Yii::$app->db->createCommand($sql)->execute();
        $a = new StuAddress();
        $a->save(false);
        $a->delete();
        Yii::$app->user->logout();
    }

    public function actionPendaftaran()
    {
        $dbpp = Biayapendaftaran::find()->all();

        foreach ($dbpp as $bpp)
        {
            $stu_master = new StuMaster();
            //$stu_master->stu_master_id = "";
            if($stu_master->save(false))
            {
                $stu_master->stu_master_stu_info_id = $stu_master->stu_master_id;
                $stu_master->stu_master_user_id = $stu_master->stu_master_id;
                $stu_master->stu_master_nationality_id = 1;
                $stu_master->stu_master_category_id = 1;
                $stu_master->stu_master_course_id = 1;
                $stu_master->stu_master_batch_id = 1;
                $stu_master->stu_master_section_id = 1;
                $stu_master->stu_master_stu_status_id = 1;
                $stu_master->stu_master_stu_address_id = $stu_master->stu_master_id;
                $stu_master->created_at = date('Y-m-d h:i:s');
                $stu_master->created_by = 1;
                $stu_master->updated_at = date('Y-m-d h:i:s');
                $stu_master->updated_by = 1;
                $stu_master->is_status = 0;
                if($stu_master->save(false))
                {
                    $stuinfo = new StuInfo();
                    $stuinfo->stu_info_id = "";
                    $stuinfo->stu_unique_id = $stu_master->stu_master_id;
                    $stuinfo->stu_first_name = $bpp->nama;
                    $stuinfo->stu_middle_name = "";
                    $stuinfo->stu_last_name = "";
                    $stuinfo->stu_address = $stu_master->stu_master_id;
                    $stuinfo->stu_gender = "";
                    $stuinfo->stu_dob = '2015-01-01';
                    $stuinfo->stu_email_id = "";
                    $stuinfo->stu_bloodgroup = "";
                    $stuinfo->stu_birthplace = "";
                    $stuinfo->stu_religion = "";
                    $stuinfo->stu_admission_date = $bpp->tgl_daftar;
                    $stuinfo->stu_photo = "";
                    $stuinfo->stu_languages = "";
                    $stuinfo->stu_mobile_no = "";
                    $stuinfo->stu_info_stu_master_id = $stu_master->stu_master_id;
                    $stuinfo->stu_title = "";
                    $stuinfo->stu_nationality = 1;
                    if($stuinfo->save(false))
                    {
                        $stuaddress = new StuAddress();
                        $stuaddress->stu_address_id = $stu_master->stu_master_id;
                        $stuaddress->stu_cadd = "";
                        $stuaddress->stu_cadd_city = "";
                        $stuaddress->stu_cadd_state = "";
                        $stuaddress->stu_cadd_country = "";
                        $stuaddress->stu_cadd_pincode = "";
                        $stuaddress->stu_cadd_phone_no = "";
                        $stuaddress->stu_cadd_house_no = 1;
                        $stuaddress->stu_padd = "";
                        $stuaddress->stu_padd_city = "";
                        $stuaddress->stu_padd_state = "";
                        $stuaddress->stu_padd_country = "";
                        $stuaddress->stu_padd_pincode = "";
                        $stuaddress->stu_padd_phone_no = "";
                        $stuaddress->stu_padd_house_no = 1;
                        $stuaddress->save(false);
                    }
                }
            }


        }

    }


    public function actionPendaftaran20152016()
    {
        $dbpp = Pendaftaran20152016::find()->all();

        foreach ($dbpp as $bpp)
        {
            $stu_master = new StuMaster();
            //$stu_master->stu_master_id = "";
            if($stu_master->save(false))
            {

                $courseid = 0;
                $sectionid = 0;

                if($bpp->course == 'PG') $courseid = 1;
                if($bpp->course == 'TK A') $courseid = 2;
                if($bpp->course == 'TK B') $courseid = 3;
                if($bpp->course == 'SD 1') $courseid = 4;

                if($bpp->section == 'PG') $sectionid = 1;
                if($bpp->section == 'Joel 1') $sectionid = 2;
                if($bpp->section == 'Amos 1') $sectionid = 3;
                if($bpp->section == 'Amos 2') $sectionid = 4;
                if($bpp->section == 'Amos 3') $sectionid = 5;
                if($bpp->section == 'Joyful 1') $sectionid = 6;
                if($bpp->section == 'Joyful 2') $sectionid = 7;


                $stu_master->stu_master_stu_info_id = $stu_master->stu_master_id;
                $stu_master->stu_master_user_id = $stu_master->stu_master_id;
                $stu_master->stu_master_nationality_id = 1;
                $stu_master->stu_master_category_id = 1;
                $stu_master->stu_master_course_id = $courseid;
                $stu_master->stu_master_batch_id = 1;
                $stu_master->stu_master_section_id = $sectionid;
                $stu_master->stu_master_stu_status_id = 0; // General/Default
                $stu_master->stu_master_stu_address_id = $stu_master->stu_master_id;
                $stu_master->created_at = date('Y-m-d h:i:s');
                $stu_master->created_by = 1;
                $stu_master->updated_at = date('Y-m-d h:i:s');
                $stu_master->updated_by = 1;
                $stu_master->is_status = 0;

                if($stu_master->save(false))
                {
                    $stuinfo = new StuInfo();
                    $stuinfo->stu_info_id = $stu_master->stu_master_id;
                    $stuinfo->stu_unique_id = $stu_master->stu_master_id;
                    $stuinfo->stu_first_name = $bpp->nama;
                    $stuinfo->stu_middle_name = "";
                    $stuinfo->stu_last_name = "";
                    $stuinfo->stu_address = $stu_master->stu_master_id;
                    $stuinfo->stu_gender = $bpp->gender;
                    $stuinfo->stu_dob = '2015-01-01';
                    $stuinfo->stu_email_id = "";
                    $stuinfo->stu_bloodgroup = "";
                    $stuinfo->stu_birthplace = $bpp->tempat_lahir;
                    $stuinfo->stu_religion = $bpp->religion;
                    $stuinfo->stu_admission_date = $bpp->tgl_daftar;
                    $stuinfo->stu_photo = "";
                    $stuinfo->stu_languages = 1;
                    $stuinfo->stu_mobile_no = "";
                    $stuinfo->stu_info_stu_master_id = $stu_master->stu_master_id;
                    $stuinfo->stu_title = "";
                    $stuinfo->stu_nationality = 1;
                    if($stuinfo->save(false))
                    {
                        $stuaddress = new StuAddress();
                        $stuaddress->stu_address_id = $stu_master->stu_master_id;
                        $stuaddress->stu_cadd = $bpp->alamat;
                        $stuaddress->stu_cadd_city = "Batam";
                        $stuaddress->stu_cadd_state = "Kepri";
                        $stuaddress->stu_cadd_country = "Indonesia";
                        $stuaddress->stu_cadd_pincode = "";
                        $stuaddress->stu_cadd_phone_no = "";
                        $stuaddress->stu_cadd_house_no = 1;
                        $stuaddress->stu_padd = $bpp->alamat;
                        $stuaddress->stu_padd_city = "Batam";
                        $stuaddress->stu_padd_state = "Kepri";
                        $stuaddress->stu_padd_country = "Indonesia";
                        $stuaddress->stu_padd_pincode = "";
                        $stuaddress->stu_padd_phone_no = "";
                        $stuaddress->stu_padd_house_no = 1;
                        if($stuaddress->save(false))
                        {
                            $stuguardian = new StuGuardians();
                            $stuguardian->guardian_name = $bpp->nama_ayah;
                            $stuguardian->guardian_relation = "Ayah";
                            $stuguardian->guardian_mobile_no = $bpp->no_hp;
                            $stuguardian->guardian_phone_no = "";
                            $stuguardian->guardian_qualification = $bpp->lastedu_ayah;
                            $stuguardian->guardian_occupation = "";
                            $stuguardian->guardian_income = "";
                            $stuguardian->guardian_email = "";
                            $stuguardian->guardian_home_address = "";
                            $stuguardian->guardian_office_address = "";
                            $stuguardian->is_emg_contact = 1;
                            $stuguardian->guardia_stu_master_id = $stu_master->stu_master_id;
                            $stuguardian->created_at = date('Y-m-d h:i:s');
                            $stuguardian->created_by = 1;
                            $stuguardian->updated_at = date('Y-m-d h:i:s');
                            $stuguardian->updated_by = 1;
                            $stuguardian->is_status = "0";
                            $stuguardian->save(false);
                        }
                    }
                }
            }


        }

    }





}
