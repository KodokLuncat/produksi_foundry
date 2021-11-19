<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Size extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Size_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','size/tbl_size_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Size_model->json();
    }

    public function read($id) 
    {
        $row = $this->Size_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_size' => $row->id_size,
		'size' => $row->size,
		'dn' => $row->dn,
	    );
            $this->template->load('template','size/tbl_size_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('size'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('size/create_action'),
	    'id_size' => set_value('id_size'),
	    'size' => set_value('size'),
	    'dn' => set_value('dn'),
	);
        $this->template->load('template','size/tbl_size_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'size' => $this->input->post('size',TRUE),
		'dn' => $this->input->post('dn',TRUE),
	    );

            $this->Size_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('size'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Size_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('size/update_action'),
		'id_size' => set_value('id_size', $row->id_size),
		'size' => set_value('size', $row->size),
		'dn' => set_value('dn', $row->dn),
	    );
            $this->template->load('template','size/tbl_size_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('size'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_size', TRUE));
        } else {
            $data = array(
		'size' => $this->input->post('size',TRUE),
		'dn' => $this->input->post('dn',TRUE),
	    );

            $this->Size_model->update($this->input->post('id_size', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('size'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Size_model->get_by_id($id);

        if ($row) {
            $this->Size_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('size'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('size'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('size', 'size', 'trim|required');
	$this->form_validation->set_rules('dn', 'dn', 'trim|required');

	$this->form_validation->set_rules('id_size', 'id_size', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_size.xls";
        $judul = "tbl_size";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Size");
	xlsWriteLabel($tablehead, $kolomhead++, "Dn");

	foreach ($this->Size_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->size);
	    xlsWriteNumber($tablebody, $kolombody++, $data->dn);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Size.php */
/* Location: ./application/controllers/Size.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-05 08:11:33 */
/* http://harviacode.com */