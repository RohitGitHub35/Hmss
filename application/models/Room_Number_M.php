<?php
defined('BASEPATH') OR exit('No direct script access allowed');

    class Room_Number_M extends CI_Model{

      
        public function getRoomNumber($roomTypeId) {
            $sql = " SELECT rn.id as id, rn.fkroom_type_Id as roomtypeid, rn.roomnumber as roomNumber, 
                    rn.isroomadd as isroomadd, rn.fkroom_type_Id as fkroomtypeid, rt.roomtype as roomtype
                    FROM `roomnumber` as rn 
                    left JOIN room as r 
                    on rn.id=r.fkroomnumberid
                    LEFT JOIN roomtype as rt
                    on rt.id=rn.fkroom_type_id
                    where rn.fkroom_type_Id= ?
                    and rn.isroomadd = ?
                    and r.fkroomtypeid IS NULL
                    and rn.isactive = ? ";

            $roomNumber = $this->db->query($sql, array($roomTypeId, 0, ISACTIVE))->result_array();
          
                        
          return  $roomNumber; 

        }

        public function getRoomNumberById($fkrooNumberId) {
            try{
                $this->db->select('id, roomnumber');
                $array = array('id' => $fkrooNumberId, 'isactive' => ISACTIVE);
                $this->db->where($array);
                $roomNumber = $this->db->get('roomnumber')->row_array();
            }catch(PDOException $e){
                http_response_code(500);
                exit;
            }
            return $roomNumber;          
        }

        public function setRoomBookByRoomNumber($roomNumberId) {
           $sql =  "update roomnumber as rn set rn.isroomadd = 1 where id=$roomNumberId ";
           $query=$this->db->query($sql);
        }
       
       public function unsetIsRoomAddes($roomNumberId) {
        $sql =  "UPDATE roomnumber as rn set rn.isroomadd = 0 where rn.id=$roomNumberId ";
        $query=$this->db->query($sql);
       }


    }

?>