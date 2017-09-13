<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Uno extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info1_model');

        }

        public function index()
        {
           
            
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_1/punto_1');
            $this->load->view('/cargarheaders/footer');
        }
        
        public function resultado()
        {
            $datos = $this->input->post('documento');

            $data['info'] = $this->info1_model->obtener_info_1($datos);
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_1/resultado_punto_1',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>