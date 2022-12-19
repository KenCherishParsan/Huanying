<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');

class Admin extends Controller {
	public function __construct(){
		parent::__construct();
		$this->call->model('User_model');
	}
	public function index() {
		$this->call->view('admin/index');
	}
	public function show_room() {
		$this->call->view('admin/room');
	}
	public function show_addroom(){
		$this->call->view('admin/addroom');
	}
	public function addroom(){
		$roomname = $this->io->post('roomname');
		$room_qnty = $this->io->post('room_qnty');
		$no_bed = $this->io->post('no_bed');
		$bedtype = $this->io->post('bedtype');
		$facility = $this->io->post('facility');
		

		 $this->form_validation->name('roomname')->required();
          if($this->form_validation->run()){
         	if ($this->User_model->addroom($roomname,$room_qnty,$no_bed,$bedtype,$facility)==true){
         		echo "Successful insert";
         	}

         }
         else{
         		echo "error";
         }		 
	}
	public function show_login(){
		$this->call->view('admin/login');
	}
	public function reservation(){
		$this->call->view('admin/reservation');
	}
	
	public function sign_up(){
		$this->call->view('admin/register');
		
	}
	public function show_addmanager(){
		$this->call->view('admin/registration');
	}
	public function show_addstaff(){
		$this->call->view('admin/staff');
	}
	public function show_admin(){
        $this->call->view('admin/admin');
    }
	public function show_rooms(){
        $this->call->view('admin/room');
    }
	public function show_r(){
        $this->call->view('admin/rooms');
    }
	

	public function registration(){
		$uname = $this->io->post('uname');
		$upass = $this->io->post('upass');
		$uemail = $this->io->post('uemail');
		$fullname = $this->io->post('fullname');
		
		 $this->form_validation->name('uname')->required();
          if($this->form_validation->run()){
         	if ($this->User_model->registration($uname,$upass,$uemail,$fullname)==true){
         		echo "Successful insert";
         	}

         }
         else{
         		echo "error";
         }		 
		}
}
?>