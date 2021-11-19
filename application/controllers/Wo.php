<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Wo extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Wo_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','wo/tbl_wo_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Wo_model->json();
    }

    public function read($id) 
    {
        
        $row = $this->Wo_model->get_by_id($id);
        if ($row) {
            $data = array(
		'ID' => $row->ID,
		'no_wo' => $row->no_wo,
		'tanggal_mulai' => $row->tanggal_mulai,
		'tanggal_selesai' => $row->tanggal_selesai,
        'type_wo' => $row->type_wo,
        'status_wo' => $row->status_wo,
        'part_number_wo' => $row->part_number_wo,
        'part_name_wo' => $row->part_name_wo,
        'part_wo' => $row->part_wo,
        'size_wo' => $row->size_wo,
        'plan_wo' => $row->plan_wo,
        'actual_wo' => $row->actual_wo,
        'ok_wo' => $row->ok_wo,
        'ng_wo' => $row->ng_wo,
	    );
            $this->template->load('template','wo/tbl_wo_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo'));
        }
    }

    public function create() 
    {
        $no_wo = '';
        $get_no_wo = $this->db->select('no_wo')
                    ->order_by('ID', 'desc')
                    ->limit(1)
                    ->from('tbl_wo')
                    ->get()->result();
        
        if(count($get_no_wo) == 0){
            $no_wo = 'WO-'.date('Ymd').'-0001';
        }else{
            foreach($get_no_wo as $wo){
                // $no_wo = $wo->no_wo + 1;
                $no_wo_db = explode('-', $wo->no_wo);
                $no_wo_create = $no_wo_db[2] + 1;
                $no_wo = 'WO-'.date('Ymd').'-000'.$no_wo_create;
            }




        $data = array(
            'button' => 'Create',
            'action' => site_url('wo/create_action'),
	    'ID' => set_value('ID'),
	    'no_wo' => set_value('no_wo',$no_wo),
	    'tanggal_mulai' => set_value('tanggal_mulai'),
	    'tanggal_selesai' => set_value('tanggal_selesai'),
	);
        $this->template->load('template','wo/tbl_wo_form', $data);
    }
}
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'no_wo' => $this->input->post('no_wo',TRUE),
		'tanggal_mulai' => $this->input->post('tanggal_mulai',TRUE),
		'tanggal_selesai' => $this->input->post('tanggal_selesai',TRUE),
	    );

            $this->Wo_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('wo'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Wo_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('wo/update_action'),
		'ID' => set_value('ID', $row->ID),
		'no_wo' => set_value('no_wo', $row->no_wo),
		'tanggal_mulai' => set_value('tanggal_mulai', $row->tanggal_mulai),
		'tanggal_selesai' => set_value('tanggal_selesai', $row->tanggal_selesai),
	    );
            $this->template->load('template','wo/tbl_wo_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('ID', TRUE));
        } else {
            $data = array(
		'no_wo' => $this->input->post('no_wo',TRUE),
		'tanggal_mulai' => $this->input->post('tanggal_mulai',TRUE),
		'tanggal_selesai' => $this->input->post('tanggal_selesai',TRUE),
	    );

            $this->Wo_model->update($this->input->post('ID', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('wo'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Wo_model->get_by_id($id);

        if ($row) {
            $this->Wo_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('wo'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('no_wo', 'no wo', 'trim|required');
	$this->form_validation->set_rules('tanggal_mulai', 'tanggal mulai', 'trim|required');
	$this->form_validation->set_rules('tanggal_selesai', 'tanggal selesai', 'trim|required');

	$this->form_validation->set_rules('ID', 'ID', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_wo.xls";
        $judul = "tbl_wo";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
	xlsWriteLabel($tablehead, $kolomhead++, "No Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Tanggal Mulai");
	xlsWriteLabel($tablehead, $kolomhead++, "Tanggal Selesai");

	foreach ($this->Wo_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->no_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tanggal_mulai);
	    xlsWriteLabel($tablebody, $kolombody++, $data->tanggal_selesai);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Wo.php */
/* Location: ./application/controllers/Wo.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-15 02:40:13 */
/* http://harviacode.com */