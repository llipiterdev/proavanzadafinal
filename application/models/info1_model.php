<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info1_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_1($documento)
        {
            
            $this->db->select('materia.nombre_materia, 
            materia.salon, materia.modulo, horario.dia, horario.hora_inicio, 
            horario.hora_fin, 
            profesor.nombre, 
            tipo_profesor.tipo_profesor');
            $this->db->from('estudiante');
            $this->db->join('estudiante_materia', 'estudiante.id_estudiante = estudiante_materia.id_estudiante', 'inner' );
            $this->db->join('materia', 'estudiante_materia.id_materia = materia.id_materia', 'inner' );
            $this->db->join('horario', 'materia.id_horario = horario.id_horario', 'inner' );
            $this->db->join('profesor_materia', 'materia.id_materia = profesor_materia.id_materia', 'left' );
            $this->db->join('profesor', 'profesor_materia.id_profesor = profesor.id_profesor', 'left' );
            $this->db->join('tipo_profesor', 'profesor.id_tipo_profesor = tipo_profesor.id_tipo_profesor', 'left' );
            $this->db->where('estudiante.documento', $documento); 
            $this->db->group_by('nombre_materia');
            $this->db->order_by('dia');
            $query = $this->db->get();
            
 
            if($query->num_rows() > 0) return $query;
            else return false;

            
        }

    }
?>