<?php
defined('PREVENT_DIRECT_ACCESS') OR exit('No direct script access allowed');
class Room_category_model extends Model {

	public function get_rooms()
	{				
    	$row = $this->db->table('tblroom_category')->get_all();
		return $row;
	}
	public function add_category($category_name,$availability,$description,$status,$image,$price,$max_persons,$size,$bed){
        $data=array(
            'category_name'=>$category_name,
            'availability'=>$availability,
            'description'=>$description,
            'image'=>$image,
            'price'=>$price,
            'status'=>$status,
            'max_persons'=>$max_persons,
            'size'=>$size,
            'bed'=>$bed
            
            
            
        );
        $this->db->table('tblroom_category')->insert($data);
        return true;
    }
    public function delete_category($category_id){
    	$del = $this->db->table('tblroom_category')->where('category_id', $category_id)->delete();
        if($del){
            return true;

        }else{
            return false;
        }
    }
    public function update_category($category_id,$category_name,$availability,$description,$status,$price,$image,$max_persons,$size,$bed){
    	$data=array(
            'category_name'=>$category_name,
            'availability'=>$availability,
            'description'=>$description,
            'status'=>$status,
            'price'=>$price,
            'image'=>$image,
            'max_persons'=>$max_persons,
            'size'=>$size,
            'bed'=>$bed
            
            
            
        );
         $this->db->table('tblroom_category')->where('category_id', $category_id)->update($data);
        return true;

    }
    public function get_category_byId($category_id){
        $row = $this->db->table('tblroom_category')->where('category_id',$category_id)->get();
        return $row;
    }
    public function get_staff()
    {               
        $row = $this->db->table('tbl_staff')->get_all();
        return $row;
    }
    public function add_staff($staff_name,$age,$gender,$position){
        $data=array(
            'staff_name'=>$staff_name,
            'age'=>$age,
            'gender'=>$gender,
            'position'=>$position
        );
        $this->db->table('tbl_staff')->insert($data);
        return true;

}
 public function update_staff($staff_id,$staff_name,$age,$gender,$position){
        $data=array(
            'staff_name'=>$staff_name,
            'age'=>$age,
            'gender'=>$gender,
            'position'=>$position
        );
         $this->db->table('tbl_staff')->where('staff_id', $staff_id)->update($data);
        return true;

    }
    public function delete_staff($staff_id){
        $del = $this->db->table('tbl_staff')->where('staff_id', $staff_id)->delete();
        if($del){
            return true;

        }else{
            return false;
        }
    }
    public function get_payment()
	{				
    	$row = $this->db->table('tbl_payment');
		return $row;
	}
	public function add_payment($customer_name,$reference_number,$message,$image,$amount){
        $data=array(
            'customer_name'=>$customer_name,
            'reference_number'=>$reference_number,
            'message'=>$message,
            'image'=>$image,
            'amount'=>$amount
            
            
            
            
        );
        $this->db->table('tbl_payment')->insert($data);
        return true;
    }
}

?>