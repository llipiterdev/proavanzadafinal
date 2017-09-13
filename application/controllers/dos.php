<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dos extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info2_model');

        }

        public function index()
        {
           
            
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_2/punto_2');
            $this->load->view('/cargarheaders/footer');
        }
        
        public function resultado()
        {
            $datos = $this->input->post('codigo_materia');

            $data['codigo'] = $this->info2_model->obtener_info_2($datos);
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_2/resultado_punto_2',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>