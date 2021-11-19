<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Data_produk extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Data_produk_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','data_produk/tbl_produk_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Data_produk_model->json();
    }

    public function read($id) 
    {
        $row = $this->Data_produk_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_part_number' => $row->id_part_number,
		'part_number' => $row->part_number,
		'part_name' => $row->part_name,
		'size' => $row->size,
		'type' => $row->type,
		'part' => $row->part,
		'material' => $row->material,
		'weight_core' => $row->weight_core,
		'weight_casting' => $row->weight_casting,
		'weight_yield' => $row->weight_yield,
		'weight_mach' => $row->weight_mach,
	    );
            $this->template->load('template','data_produk/tbl_produk_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('data_produk'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            
            'action' => site_url('data_produk/create_action'),
	    'id_part_number' => set_value('id_part_number'),
	    'part_number' => set_value('part_number'),
	    'part_name' => set_value('part_name'),
	    'size' => set_value('size'),
	    'type' => set_value('type'),
	    'part' => set_value('part'),
	    'material' => set_value('material'),
	    'weight_core' => set_value('weight_core'),
	    'weight_casting' => set_value('weight_casting'),
	    'weight_yield' => set_value('weight_yield'),
	    'weight_mach' => set_value('weight_mach'),
	);
        $this->template->load('template','data_produk/tbl_produk_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'part_number' => $this->input->post('part_number',TRUE),
		'part_name' => $this->input->post('part_name',TRUE),
		'size' => $this->input->post('size',TRUE),
		'type' => $this->input->post('type',TRUE),
		'part' => $this->input->post('part',TRUE),
		'material' => $this->input->post('material',TRUE),
		'weight_core' => $this->input->post('weight_core',TRUE),
		'weight_casting' => $this->input->post('weight_casting',TRUE),
		'weight_yield' => $this->input->post('weight_yield',TRUE),
		'weight_mach' => $this->input->post('weight_mach',TRUE),
	    );

            $this->Data_produk_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('data_produk'));
        }
    }
    
    public function update($id) 
    {

        if($this->session->userdata('id_user_level')=='1'){
        $row = $this->Data_produk_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('data_produk/update_action'),
		'id_part_number' => set_value('id_part_number', $row->id_part_number),
		'part_number' => set_value('part_number', $row->part_number),
		'part_name' => set_value('part_name', $row->part_name),
		'size' => set_value('size', $row->size),
		'type' => set_value('type', $row->type),
		'part' => set_value('part', $row->part),
		'material' => set_value('material', $row->material),
		'weight_core' => set_value('weight_core', $row->weight_core),
		'weight_casting' => set_value('weight_casting', $row->weight_casting),
		'weight_yield' => set_value('weight_yield', $row->weight_yield),
		'weight_mach' => set_value('weight_mach', $row->weight_mach),
	    );
            $this->template->load('template','data_produk/tbl_produk_form', $data);
        }
    } 
     else if($this->session->userdata('id_user_level')=='2'){
        $row = $this->Data_produk_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('data_produk/update_action'),
		'id_part_number' => set_value('id_part_number', $row->id_part_number),
		'part_number' => set_value('part_number', $row->part_number),
		'part_name' => set_value('part_name', $row->part_name),
		'size' => set_value('size', $row->size),
		'type' => set_value('type', $row->type),
		'part' => set_value('part', $row->part),
		'material' => set_value('material', $row->material),
		'weight_core' => set_value('weight_core', $row->weight_core),
		'weight_casting' => set_value('weight_casting', $row->weight_casting),
		'weight_yield' => set_value('weight_yield', $row->weight_yield),
		'weight_mach' => set_value('weight_mach', $row->weight_mach),
	    );
            $this->template->load('template','data_produk/tbl_produk_form', $data);
        }
     }

     else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('data_produk'));
        }
        
    }
    
    public function update_action() 
    {
        $this->_rules();
        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_part_number', TRUE));
        } else {
            $data = array(
		'part_number' => $this->input->post('part_number',TRUE),
		'part_name' => $this->input->post('part_name',TRUE),
		'size' => $this->input->post('size',TRUE),
		'type' => $this->input->post('type',TRUE),
		'part' => $this->input->post('part',TRUE),
		'material' => $this->input->post('material',TRUE),
		'weight_core' => $this->input->post('weight_core',TRUE),
		'weight_casting' => $this->input->post('weight_casting',TRUE),
		'weight_yield' => $this->input->post('weight_yield',TRUE),
		'weight_mach' => $this->input->post('weight_mach',TRUE),
	    );



            $this->Data_produk_model->update($this->input->post('id_part_number', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('data_produk'));
        }
    }

    public function delete($id) 
    {
     if($this->session->userdata('id_user_level')=='1'){
        $row = $this->Data_produk_model->get_by_id($id);

        if ($row) {
            $this->Data_produk_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('data_produk'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('data_produk'));
        }
        
    }
    else if($this->session->userdata('id_user_level')=='2'){
        $row = $this->Data_produk_model->get_by_id($id);

        if ($row) {
            $this->Data_produk_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('data_produk'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('data_produk'));
        }
    }     
        else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('data_produk'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('part_number', 'part number', 'trim|required');
	$this->form_validation->set_rules('part_name', 'part name', 'trim|required');
	$this->form_validation->set_rules('size', 'size', 'trim|required');
	$this->form_validation->set_rules('type', 'type', 'trim|required');
	$this->form_validation->set_rules('part', 'part', 'trim|required');
	$this->form_validation->set_rules('material', 'material', 'trim|required');
	//$this->form_validation->set_rules('weight_core', 'weight core', 'trim|required');
	//$this->form_validation->set_rules('weight_casting', 'weight casting', 'trim|required');
	//$this->form_validation->set_rules('weight_yield', 'weight yield', 'trim|required');
	//$this->form_validation->set_rules('weight_mach', 'weight mach', 'trim|required');

	$this->form_validation->set_rules('id_part_number', 'id_part_number', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_produk.xls";
        $judul = "tbl_produk";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Part Number");
	xlsWriteLabel($tablehead, $kolomhead++, "Part Name");
	xlsWriteLabel($tablehead, $kolomhead++, "Size");
	xlsWriteLabel($tablehead, $kolomhead++, "Type");
	xlsWriteLabel($tablehead, $kolomhead++, "Part");
	xlsWriteLabel($tablehead, $kolomhead++, "Material");
	xlsWriteLabel($tablehead, $kolomhead++, "Weight Core");
	xlsWriteLabel($tablehead, $kolomhead++, "Weight Casting");
	xlsWriteLabel($tablehead, $kolomhead++, "Weight Yield");
	xlsWriteLabel($tablehead, $kolomhead++, "Weight Mach");

	foreach ($this->Data_produk_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part_number);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part_name);
	    xlsWriteLabel($tablebody, $kolombody++, $data->size);
	    xlsWriteLabel($tablebody, $kolombody++, $data->type);
	    xlsWriteLabel($tablebody, $kolombody++, $data->part);
	    xlsWriteLabel($tablebody, $kolombody++, $data->material);
	    xlsWriteLabel($tablebody, $kolombody++, $data->weight_core);
	    xlsWriteLabel($tablebody, $kolombody++, $data->weight_casting);
	    xlsWriteLabel($tablebody, $kolombody++, $data->weight_yield);
	    xlsWriteLabel($tablebody, $kolombody++, $data->weight_mach);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Data_produk.php */
/* Location: ./application/controllers/Data_produk.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-05 07:30:33 */
/* http://harviacode.com */