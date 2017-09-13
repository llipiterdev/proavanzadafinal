<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info3_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_3()
        {
            
            $this->db->select('profesor.nombre, 
            tipo_profesor.tipo_profesor');
            $this->db->from('profesor');
            $this->db->join('tipo_profesor', 'profesor.id_tipo_profesor =tipo_profesor.id_tipo_profesor', 'inner' );
            $query = $this->db->get();
            
            if($query->num_rows() > 0) return $query;
            else return false;

            
        }

    }
?>