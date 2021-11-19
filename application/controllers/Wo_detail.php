<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Wo_detail extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Wo_detail_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','wo_detail/tbl_wo_detail_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Wo_detail_model->json();
    }

    public function read($id) 
    {
        $row = $this->Wo_detail_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_wo_detail' => $row->id_wo_detail,
		'no_wo_detail' => $row->no_wo_detail,
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
		'deskripsi_wo' => $row->deskripsi_wo,
	    );
            $this->template->load('template','wo_detail/tbl_wo_detail_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo_detail'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('wo_detail/create_action'),
	    'id_wo_detail' => set_value('id_wo_detail'),
	    'no_wo_detail' => set_value('no_wo_detail'),
	    'type_wo' => set_value('type_wo'),
	    'status_wo' => set_value('status_wo'),
	    'part_number_wo' => set_value('part_number_wo'),
	    'part_name_wo' => set_value('part_name_wo'),
	    'part_wo' => set_value('part_wo'),
	    'size_wo' => set_value('size_wo'),
	    'plan_wo' => set_value('plan_wo'),
	    'actual_wo' => set_value('actual_wo'),
	    'ok_wo' => set_value('ok_wo'),
	    'ng_wo' => set_value('ng_wo'),
	    'deskripsi_wo' => set_value('deskripsi_wo'),
	);
        $this->template->load('template','wo_detail/tbl_wo_detail_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'no_wo_detail' => $this->input->post('no_wo_detail',TRUE),
		'type_wo' => $this->input->post('type_wo',TRUE),
		'status_wo' => $this->input->post('status_wo',TRUE),
		'part_number_wo' => $this->input->post('part_number_wo',TRUE),
		'part_name_wo' => $this->input->post('part_name_wo',TRUE),
		'part_wo' => $this->input->post('part_wo',TRUE),
		'size_wo' => $this->input->post('size_wo',TRUE),
		'plan_wo' => $this->input->post('plan_wo',TRUE),
		'actual_wo' => $this->input->post('actual_wo',TRUE),
		'ok_wo' => $this->input->post('ok_wo',TRUE),
		'ng_wo' => $this->input->post('ng_wo',TRUE),
		'deskripsi_wo' => $this->input->post('deskripsi_wo',TRUE),
	    );

            $this->Wo_detail_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('wo_detail'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Wo_detail_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('wo_detail/update_action'),
		'id_wo_detail' => set_value('id_wo_detail', $row->id_wo_detail),
		'no_wo_detail' => set_value('no_wo_detail', $row->no_wo_detail),
		'type_wo' => set_value('type_wo', $row->type_wo),
		'status_wo' => set_value('status_wo', $row->status_wo),
		'part_number_wo' => set_value('part_number_wo', $row->part_number_wo),
		'part_name_wo' => set_value('part_name_wo', $row->part_name_wo),
		'part_wo' => set_value('part_wo', $row->part_wo),
		'size_wo' => set_value('size_wo', $row->size_wo),
		'plan_wo' => set_value('plan_wo', $row->plan_wo),
		'actual_wo' => set_value('actual_wo', $row->actual_wo),
		'ok_wo' => set_value('ok_wo', $row->ok_wo),
		'ng_wo' => set_value('ng_wo', $row->ng_wo),
		'deskripsi_wo' => set_value('deskripsi_wo', $row->deskripsi_wo),
	    );
            $this->template->load('template','wo_detail/tbl_wo_detail_form1', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo_detail'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_wo_detail', TRUE));
        } else {
            $data = array(
		'no_wo_detail' => $this->input->post('no_wo_detail',TRUE),
		'type_wo' => $this->input->post('type_wo',TRUE),
		'status_wo' => $this->input->post('status_wo',TRUE),
		'part_number_wo' => $this->input->post('part_number_wo',TRUE),
		'part_name_wo' => $this->input->post('part_name_wo',TRUE),
		'part_wo' => $this->input->post('part_wo',TRUE),
		'size_wo' => $this->input->post('size_wo',TRUE),
		'plan_wo' => $this->input->post('plan_wo',TRUE),
		'actual_wo' => $this->input->post('actual_wo',TRUE),
		'ok_wo' => $this->input->post('ok_wo',TRUE),
		'ng_wo' => $this->input->post('ng_wo',TRUE),
		'deskripsi_wo' => $this->input->post('deskripsi_wo',TRUE),
	    );

            $this->Wo_detail_model->update($this->input->post('id_wo_detail', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('wo_detail'));
        }
    }
    
    public function delete($id) 
    {
    if($this->session->userdata('id_user_level')=='1'){
        $row = $this->Wo_detail_model->get_by_id($id);
        if ($row) {
            $this->Wo_detail_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('wo_detail'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo_detail'));
        
        
        }
    }
    else if($this->session->userdata('id_user_level')=='2'){
        $row = $this->Wo_detail_model->get_by_id($id);
        if ($row) {
            $this->Wo_detail_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('wo_detail'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('wo_detail'));
        }
    }
 else {
    $this->session->set_flashdata('message', 'Record Not Found');
    redirect(site_url('wo_detail'));
}
}

    public function _rules() 
    {
	$this->form_validation->set_rules('no_wo_detail', 'no wo detail', 'trim|required');
	$this->form_validation->set_rules('type_wo', 'type wo', 'trim|required');
	$this->form_validation->set_rules('status_wo', 'status wo', 'trim|required');
	$this->form_validation->set_rules('part_number_wo', 'part number wo', 'trim|required');
	$this->form_validation->set_rules('part_name_wo', 'part name wo', 'trim|required');
	$this->form_validation->set_rules('part_wo', 'part wo', 'trim|required');
	$this->form_validation->set_rules('size_wo', 'size wo', 'trim|required');
	$this->form_validation->set_rules('plan_wo', 'plan wo', 'trim|required');
	$this->form_validation->set_rules('actual_wo', 'actual wo', 'trim|required');
	$this->form_validation->set_rules('ok_wo', 'ok wo', 'trim|required');
	$this->form_validation->set_rules('ng_wo', 'ng wo', 'trim|required');
	$this->form_validation->set_rules('deskripsi_wo', 'deskripsi wo', 'trim|required');

	$this->form_validation->set_rules('id_wo_detail', 'id_wo_detail', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_wo_detail.xls";
        $judul = "tbl_wo_detail";
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
	xlsWriteLabel($tablehead, $kolomhead++, "No Wo Detail");
	xlsWriteLabel($tablehead, $kolomhead++, "Type Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Status Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Part Number Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Part Name Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Part Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Size Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Plan Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Actual Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Ok Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Ng Wo");
	xlsWriteLabel($tablehead, $kolomhead++, "Deskripsi Wo");

	foreach ($this->Wo_detail_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->no_wo_detail);
	    xlsWriteLabel($tablebody, $kolombody++, $data->type_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->status_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part_number_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part_name_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->size_wo);
	    xlsWriteNumber($tablebody, $kolombody++, $data->plan_wo);
	    xlsWriteNumber($tablebody, $kolombody++, $data->actual_wo);
	    xlsWriteNumber($tablebody, $kolombody++, $data->ok_wo);
	    xlsWriteNumber($tablebody, $kolombody++, $data->ng_wo);
	    xlsWriteLabel($tablebody, $kolombody++, $data->deskripsi_wo);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Wo_detail.php */
/* Location: ./application/controllers/Wo_detail.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-15 03:33:41 */
/* http://harviacode.com */