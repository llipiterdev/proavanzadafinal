<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info4_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_4()
        {
            
            $this->db->select('profesor.nombre, materia.nombre_materia, horario.dia, horario.hora_inicio, horario.hora_fin');
            $this->db->from('profesor');
            $this->db->join('profesor_materia', 'profesor.id_profesor = profesor_materia.id_profesor', 'inner' );
            $this->db->join('materia', 'profesor_materia.id_materia = materia.id_materia', 'inner' );
            $this->db->join('horario', 'materia.id_horario = horario.id_horario', 'inner' );
            $this->db->order_by('nombre');             
            $query = $this->db->get();
            
            if($query->num_rows() > 0) return $query;
            else return false;

            
        }

    }
?>