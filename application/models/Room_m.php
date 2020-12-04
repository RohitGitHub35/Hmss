<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Room_m extends CI_Model{

        public function create($formArray){
            $this->db->insert('room',$formArray);
        }

        public function getRoomType() {
            try{
                $this->db->select('id, roomtype');
                $roomType = $this->db->get_where('roomtype', array('isactive' => ISACTIVE))->result_array(); 
            }catch(PDOException $e){
                http_response_code(500);
                exit;
            }
            return $roomType;
        }

        public function num_rows() {
            // $sql = "select COUNT(id) from room where isactive = ?";
            // $count = $this->db->query($sql, array(ISACTIVE))->num_rows(); 
            $q = $this->db->select()
                      ->from('room')
                      ->where('isactive', 1)
                      ->get();
            return $q->num_rows();
        }

        public function getLastRoomId() {
            $this->db->select('id');
            $this->db->order_by("id", "desc");
            $lastRoomId = $this->db->get('room', 1)->row_array(); 
            return $lastRoomId;
        }   

        public function getRoomArea($roomTypeId) {
            try{
                $this->db->select('id, area');
                $array = array('roomAreaIdfk' => $roomTypeId, 'isactive' => ISACTIVE);
                //$roomType = $this->db->get_where('room_area', array('roomAreaIdfk' => $roomTypeId))->result_array(); 
                $this->db->where($array);
                $roomType = $this->db->get('room_area')->result_array();
            }catch(PDOException $e){
                http_response_code(500);
                exit;
            }
            return $roomType;   
        }

        public function getAllRooms($params=[], $limit, $offset){
        
            $sql = '';
            // if($params['queryString'] != null || $params['queryString'] != '') {
            //     $this->db->like('id',$params['queryString']);
            // }
            // $result = $this->db->get_where('room', array('isactive' => ISACTIVE), LIMIT, OFFSET)->result_array();
            // return $result;
            $sql1 = " select r.id as id, r.roomnumber as roomnumber, r.roomtype as roomtype, r.beds as beds, r.capacity as capacity, r.price as price,
                     r.roomdetails as roomdetails, r.isactive as isactive, r.adult as adult, r.child as child, r.area as area,
                     ri.imagepath as roomimage, ri.imagename as imagename
                     from room as r 
                     left join room_image as ri ON r.id = ri.fkroomimgid ";
            if($params['queryString'] != null || $params['queryString'] != '') {
              $string = $params['queryString'];
              $sql2 =  " where  r.id  LIKE '%$string%' or r.roomtype Like '%$string%' or r.roomnumber like '%$string%' ";
              $sql3 = "and r.isactive = ? 
                       ORDER BY r.id Desc
                       limit ? 
                       offset ? ";
              $sql = $sql1." ".$sql2." ".$sql3;
            }              
  
            if($sql != null || $sql != '') {
                $result = $this->db->query($sql, array( ISACTIVE, $limit, $offset))->result_array();  
            } else {
                $sql3 = "where r.isactive = ? 
                     ORDER BY r.id Desc
                     limit ? 
                     offset ? ";
                $sql = $sql1." ".$sql3;
                $result = $this->db->query($sql, array(ISACTIVE, $limit, $offset))->result_array(); 
            }        
            
            return $result;      
        }

        public function getRoom($id) {
            // $this->db->where('id',$id);
            // $room = $this->db->get('room')->row_array();

            $sql = " select r.id as id, r.roomnumber as roomnumber, r.roomtype as roomtype, r.beds as beds, r.capacity as capacity, r.price as price,
                     r.roomdetails as roomdetails, r.isactive as isactive, r.adult as adult, r.child as child, r.area as area,
                     ri.imagepath as roomimage, ri.imagename as imagename,
                     r.fkroomtypeid as fkroomtypeid, r.fkroomnumberid as fkroomnumberid, r.fkroomarea as roomareaid
                     from room as r 
                     left join room_image as ri ON r.id = ri.fkroomimgid 
                     where r.id = ?
                     and r.isactive = ? 
                     ORDER BY r.id Desc
                     limit ? ";
           
                $room = $this->db->query($sql, array($id, ISACTIVE, LIMIT))->row_array();  

            return $room;
        }

        public function update($id, $formArray) {
            $this->db->where('id', $id);
            $this->db->update('room', $formArray);
        }

        
        public function delete($id) {
            $this->db->where('id', $id);
            $this->db->delete('room');
        }


    }

?>