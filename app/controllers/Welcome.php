<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');

class Welcome extends Controller {
	public function __construct(){
		parent::__construct();
		$this->call->library('Auth');
		$this->call->library('email');
		$this->call->model('Validation_model');
	}
	public function index() {
		$this->call->view('welcome_page');
	}
	
	public function register(){
		$validation_code = mt_rand(111111111, 999999999);
		$this->Auth->register('huanying','1234', 'decastrojustin24@gmail.com','admin',$validation_code);
		$this->send_email('decastrojustin24@gmail.com', 'huanying', '1234', 'admin', $validation_code);
		echo 'registered';

}
	public function send_email($recipient,$username,$code){
		$this->email->subject('Account Validation');
		$this->email->sender('noreply@website.com');
		$this->email->recipient($recipient);
		$this->email->email_content(BASE_URL . 'welcome/validate' . $username . '/' . $code);
		$this->email->send();


	}
	public function login(){
		$data = $this->Auth->login('huanying', '1234');
		$validated = $this->Validation_model->is_validated($data);

		if($data){
			if($validated){
				$this->Auth->set_logged_in($data);
				redirect('welcome/home');
			}else{
				echo 'account not yet validated';
			}
		}else{
			echo 'something went wrong';
		}
	
	}
	public function validate($username,$code){
		if($this->Validation_model->validate($username,$code))
		echo 'account was validated. you can now login your account';

	}
	public function home(){
		if($this->Auth->is_logged_in()){
		echo 'Welcome'  . $this->Auth->get_username(); 
	}
}
}
?>