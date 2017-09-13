<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info7_model extends CI_Model {
        function __construct(){
            parent::__construct();
            $this->load->database();
        }

        public function obtener_info_7()
        {
            $this->db->select('materia.id_materia,
            materia.nombre_materia,
            materia.salon,
            materia.modulo,
            materia.cupos,
            tipo_materia.tipo_materia,
            horario.dia,
            horario.hora_inicio,
            horario.hora_fin');
            $this->db->from('materia');
            $this->db->join('tipo_materia', 'materia.id_tipo_materia = tipo_materia.id_tipo_materia', 'inner' );
            $this->db->join('horario', 'materia.id_horario = horario.id_horario', 'inner');       
            $query = $this->db->get();
            
            if($query->num_rows() > 0) return $query;
            else return false;
        }

        public function get_id_materia($id_materia)
        {
            $this->db->select('materia.id_materia, materia.cupos');
            $this->db->from('materia');
            $this->db->where('id_materia',$id_materia);
            $query = $this->db->get();
            if($query->num_rows() > 0) return $query;
            else return false;
        }

        public function registrar_estudiante($id_materia)
        {          
      
            $data = array(
                'id_estudiante' => '' ,
                'nombre' => $this->input->post('nombre'),
                'documento' => $this->input->post('documento'),
                'carrera' => $this->input->post('carrera'),
                'id_tipo_estudiante' => $this->input->post('tipo_estudiante')
             );
             $this->db->insert('estudiante', $data);
             $id = $this->db->insert_id();
             $data1 = array(
                 'id_estudiante' => $id,
                 'id_materia' => $id_materia
             );
             $this->db->insert('estudiante_materia', $data1);
             $this->db->set('cupos', 'cupos-1');             
             $this->db->where('id_materia', $id_materia);
             $this->db->update('materia');             

        }
    }
?>