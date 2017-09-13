<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info5_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_5()
        {
            $this->db->select('estudiante.nombre, estudiante.carrera');
            $this->db->from('estudiante');
            $this->db->join('tipo_estudiante', 'estudiante.id_tipo_estudiante = tipo_estudiante.id_tipo_estudiante', 'inner' );
            $this->db->where('tipo_estudiante', 'pregrado');       
            $query = $this->db->get();
            
            if($query->num_rows() > 0) return $query;
            else return false;
        }
    }
?>