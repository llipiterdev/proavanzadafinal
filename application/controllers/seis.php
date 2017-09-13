<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Seis extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info6_model');

        }

        public function index()
        {
            $data['lista'] = $this->info6_model->obtener_info_6();
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_6/resultado_punto_6',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>