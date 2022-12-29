<?php 
class Validation_model extends Model {
    
    public function __construct(){
    $this->call->database();
    }

    public function is_validated($username){
        $this->db->table('user')
                ->where('username', $username)
                ->where('status', 1)
                ->get();
            if($this->db->row_count()>0)
            return true;

    }
    public function validate($username,$code){
        $this->db->table('user')
                ->update(array('status' =>1))
                ->where('username', $username)
                ->where('validation_code', $code)
                ->exec();
    }


}


?>