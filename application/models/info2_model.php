<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info2_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_2($codigo_materia)
        {
            
            $this->db->select('materia.nombre_materia,
            profesor.nombre, 
            tipo_profesor.tipo_profesor');
            $this->db->from('materia');
            $this->db->join('profesor_materia', 'materia.id_materia = profesor_materia.id_materia', 'inner' );
            $this->db->join('profesor', 'profesor_materia.id_profesor = profesor.id_profesor', 'inner' );
            $this->db->join('tipo_profesor', 'profesor.id_tipo_profesor =tipo_profesor.id_tipo_profesor', 'inner' );
            $this->db->where('materia.id_materia', $codigo_materia); 
            $query = $this->db->get();
            
            if($query->num_rows() > 0) return $query;
            else return false;

            
        }

    }
?>