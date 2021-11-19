<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Partname extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Partname_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','partname/tbl_partname_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Partname_model->json();
    }

    public function read($id) 
    {
        $row = $this->Partname_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_partname' => $row->id_partname,
		'partname' => $row->partname,
	    );
            $this->template->load('template','partname/tbl_partname_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('partname'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('partname/create_action'),
	    'id_partname' => set_value('id_partname'),
	    'partname' => set_value('partname'),
	);
        $this->template->load('template','partname/tbl_partname_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'partname' => $this->input->post('partname',TRUE),
	    );

            $this->Partname_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('partname'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Partname_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('partname/update_action'),
		'id_partname' => set_value('id_partname', $row->id_partname),
		'partname' => set_value('partname', $row->partname),
	    );
            $this->template->load('template','partname/tbl_partname_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('partname'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_partname', TRUE));
        } else {
            $data = array(
		'partname' => $this->input->post('partname',TRUE),
	    );

            $this->Partname_model->update($this->input->post('id_partname', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('partname'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Partname_model->get_by_id($id);

        if ($row) {
            $this->Partname_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('partname'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('partname'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('partname', 'partname', 'trim|required');

	$this->form_validation->set_rules('id_partname', 'id_partname', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_partname.xls";
        $judul = "tbl_partname";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Partname");

	foreach ($this->Partname_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->partname);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Partname.php */
/* Location: ./application/controllers/Partname.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-05 08:08:21 */
/* http://harviacode.com */