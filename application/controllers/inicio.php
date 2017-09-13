<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicio extends CI_Controller {
        function __construct(){
            parent::__construct();

        }

        public function index()
        {
            $this->load->view('/cargarheaders/header');
            $this->load->view('/inicio/index');
            $this->load->view('/cargarheaders/footer');
        }        
    }
?>