<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');

class Login extends Controller {

    public function __construct() {
        parent:: __construct();
    }

    // login for admin
    public function index() {
        // --using is_logged_in function from app/helpers/common_helper.php
        if(is_logged_in())
            $this->check_login_user();

        if($this->form_validation->submitted()) {

            $username = $this->io->post('username');
            $password = $this->io->post('password');

            $this->call->model('auth/admin_model');

            $data = $this->admin_model->auth($username, $password);
            if(empty($data)) {
                
                $this->session->set_flashdata(array('alert' => 'danger', 'message' => 'Wrong username or password.'));
                
            }else {

                $this->session->set_userdata(
                    array(
                        'logged_in' => 1,
                        'user_id' => $data['user_id'],
                        'username' => $data['username'],
                        'role' => 'administrator',
                    )
                );
                
                $this->check_login_user();
            }
        }

        $this->call->view('login');
	}

    public function check_login_user()
    {
        if($_SESSION['role'] == "administrator")
            redirect('Admin');
        elseif($this->session->userdata('role') == "customer")
            redirect('User');
    }

}

?>