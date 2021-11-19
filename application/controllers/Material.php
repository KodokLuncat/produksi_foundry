<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Material extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        is_login();
        $this->load->model('Material_model');
        $this->load->library('form_validation');        
	$this->load->library('datatables');
    }

    public function index()
    {
        $this->template->load('template','material/tbl_material_list');
    } 
    
    public function json() {
        header('Content-Type: application/json');
        echo $this->Material_model->json();
    }

    public function read($id) 
    {
        $row = $this->Material_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id_material' => $row->id_material,
		'material' => $row->material,
	    );
            $this->template->load('template','material/tbl_material_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('material'));
        }
    }

    public function create() 
    {
        $data = array(
            'button' => 'Create',
            'action' => site_url('material/create_action'),
	    'id_material' => set_value('id_material'),
	    'material' => set_value('material'),
	);
        $this->template->load('template','material/tbl_material_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'material' => $this->input->post('material',TRUE),
	    );

            $this->Material_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success 2');
            redirect(site_url('material'));
        }
    }
    
    public function update($id) 
    {
        $row = $this->Material_model->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('material/update_action'),
		'id_material' => set_value('id_material', $row->id_material),
		'material' => set_value('material', $row->material),
	    );
            $this->template->load('template','material/tbl_material_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('material'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id_material', TRUE));
        } else {
            $data = array(
		'material' => $this->input->post('material',TRUE),
	    );

            $this->Material_model->update($this->input->post('id_material', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('material'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->Material_model->get_by_id($id);

        if ($row) {
            $this->Material_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('material'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('material'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('material', 'material', 'trim|required');

	$this->form_validation->set_rules('id_material', 'id_material', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "tbl_material.xls";
        $judul = "tbl_material";
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
	xlsWriteLabel($tablehead, $kolomhead++, "Material");

	foreach ($this->Material_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
	    xlsWriteLabel($tablebody, $kolombody++, $data->material);

	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

}

/* End of file Material.php */
/* Location: ./application/controllers/Material.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-05 08:07:37 */
/* http://harviacode.com */