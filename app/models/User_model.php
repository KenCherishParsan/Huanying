<?php
Class User_model extends Model{
    
    public function get_rooms(){
        return $this->db->table('room_category')->get_all();
    }
    public function addroom($roomname,$room_qnty,$no_bed,$bedtype,$facility){
        $data=array(
            'roomname'=>$roomname,
            'room_qnty'=>$room_qnty,
            'no_bed'=>$no_bed,
            'bedtype'=>$bedtype,
            'facility'=>$facility
        );
        $this->db->table('room_category')->insert($data);
        return true;
    }
   
    
    public function registration($uname,$upass,$fullname,$uemail){
        $data=array(
       
       'uname'=>$uname,
       'upass'=>$upass,
       'fullname'=>$fullname,
       'uemail'=>$uemail
        );
        $this->db->table('manager')->insert($data);
        return true;
    }
        
    
    
        
    
} 

?>