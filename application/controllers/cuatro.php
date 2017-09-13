<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cuatro extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info4_model');

        }

        public function index()
        {
            $data['lista'] = $this->info4_model->obtener_info_4();
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_4/resultado_punto_4',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>