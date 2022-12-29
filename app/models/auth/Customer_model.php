<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');
class Customer_model extends Model {

	public function auth($username, $password)
	{				
    	$row = $this->db->table('tblusers') 					
    					->where('username', $username)
    					->get();
		if($row)
		{
			if(password_verify($password, $row['password'])) {
				return $row;
			} else {
				return false;
			}
		}
	}

    public function passwordhash($password)
	{
		$options = array(
		'cost' => 4,
		);
		return password_hash($password, PASSWORD_BCRYPT, $options);
	}
	public function insert_customer($email,$password){
		$data = array(
			'username' => $email,
			'password' => $this->passwordhash($password),
			'role'=>"Customer",
			'status'=>"Verified"
		);
		return $this->db->table('tblusers')->insert($data);
	}
	public function add_customer($firstname,$lastname,$middlename,$address,$gender,$birthday){
		
		$data = array(
			
			'firstname' => $firstname,
			'lastname' => $lastname,
			'middlename'=>$middlename,
			'address'=>$address,
			'gender'=>$gender,
			'birthday'=>$birthday

		);
		$this->call->database();
		return $this->db->table('tbl_customer')->insert($data);
		return true;
	}
// public function add_customer(){
// 	echo '123';
// }


}

?>