<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tres extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info3_model');

        }

        public function index()
        {
            $data['lista'] = $this->info3_model->obtener_info_3();
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_3/resultado_punto_3',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>