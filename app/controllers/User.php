<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');

class User extends Controller {
    public function __construct(){
		parent::__construct();
		$this->call->model('User_model');
	}
	public function index() {
		$this->call->view('user/index.php');
	}
    public function show_room(){
        $data['rooms']=$this->User_model->get_rooms();
        $this->call->view('user/room',$data);
    }
    public function show_reservation(){
        $this->call->view('user/reservation');
    }
    public function show_login(){
        $this->call->view('user/login');
    }
    
    public function show_allroom(){
       // $this->call->view('user/show_room_cat');
       $data['rooms']=$this->User_model->get_rooms();
        var_dump($data['rooms']);
    }
    
    
}
?>