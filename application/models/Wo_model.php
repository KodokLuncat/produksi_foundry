<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Wo_model extends CI_Model
{

    public $table = 'tbl_wo';
    public $id = 'ID';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('ID,no_wo,tanggal_mulai,tanggal_selesai');
        $this->datatables->from('tbl_wo');
        //add this line for join
        //$this->datatables->join('tbl_wo_detail', 'tbl_wo.no_wo = tbl_wo_detail.no_wo_detail');
        $this->datatables->add_column('action', anchor(site_url('wo/read/$1'),'<i class="fa fa-eye" aria-hidden="true"></i>', array('class' => 'btn btn-primary btn-xs'))." 
            ".anchor(site_url('wo/update/$1'),'<i class="fa fa-pencil-square-o" aria-hidden="true"></i>', array('class' => 'btn btn-success btn-xs'))." 
                "//.anchor(site_url('wo/delete/$1'),'<i class="fa fa-trash-o" aria-hidden="true"></i>','class="btn btn-danger btn-xs" onclick="javasciprt: return confirm(\'Are You Sure ?\')"')
                , 'ID');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        //$this->db->where($this->id, $no_wo);
        //return $this->db->get($this->table)->row();
        $wo_detail = $this->db->select('*')
                        ->from('tbl_wo')
                        ->join('tbl_wo_detail', 'tbl_wo.no_wo = tbl_wo_detail.no_wo_detail')
                        ->where('tbl_wo.ID',$id)
                        ->get();
        return $wo_detail->row();
        // $this->db->select('tbl_wo.*,tbl_wo_detail.no_wo_detail, tbl_wo_detail.type_wo');
        // $this->db->from('tbl_wo');
        // $this->db->join('tbl_wo_detail', 'tbl_wo.no_wo = tbl_wo_detail.no_wo_detail');
        // $detail = $this->db->get();
        // return $detail->result();


    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('ID', $q);
	$this->db->or_like('no_wo', $q);
	$this->db->or_like('tanggal_mulai', $q);
	$this->db->or_like('tanggal_selesai', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('ID', $q);
	$this->db->or_like('no_wo', $q);
	$this->db->or_like('tanggal_mulai', $q);
	$this->db->or_like('tanggal_selesai', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Wo_model.php */
/* Location: ./application/models/Wo_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-11-15 02:40:13 */
/* http://harviacode.com */