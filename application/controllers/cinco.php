<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cinco extends CI_Controller {
        function __construct(){
            parent::__construct();
            $this->load->helper('form');
            $this->load->model('info5_model');

        }

        public function index()
        {
            $data['lista'] = $this->info5_model->obtener_info_5();
            $this->load->view('/cargarheaders/header');
            $this->load->view('/puntos/punto_5/resultado_punto_5',$data);
            $this->load->view('/cargarheaders/footer');
        }


    }
?>