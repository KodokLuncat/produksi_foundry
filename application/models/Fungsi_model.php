<?php
class Fungsi_model extends CI_Model
{
    public $no_wo;
    public $status;
    public $tanggal_mulai;
    public $tanggal_selesai;

    public function __construct()
    {
        $this->load->database();
    }

    public function cek_no_wo()
    {

        

    }

}
?>