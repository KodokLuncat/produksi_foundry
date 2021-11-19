<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Wo_pk extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Fungsi_model','fungsi');
    }
    
}





?>