<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Room extends CI_Controller{

        function __construct() {
			parent::__construct();
			$admin = $this->session->userdata('admin');
			if (!$this->session->userdata('admin')) {
				$this->session->set_flashdata('msg', 'Your session has been expired');
				redirect(base_url().'admin/login/index');
            }
            $this->load->model('Room_m');
            $this->load->model('Room_Area_M'); 
            $this->load->model('Room_Type_M');
            $this->load->model('Room_Image_M');
            $this->load->model('Room_Number_M');
            $this->load->library('image_lib');
            $this->load->helper('text');
            $this->load->helper('url');
           

		}

		public function index(){
            $this->load->library('pagination');
            $config = [
                'base_url' => base_url('admin/Room/index'),
                'per_page' => 3,
                'total_rows' => $this->Room_m->num_rows(),
                'full_tag_open' => '<ul class="pagination">',
                'full_tag_close' => '</ul>',
                'next_tag_open' => '<li class="page-item">',
                'next_tag_close' => '</li>',
                'prev_tag_open' => '<li class="page-item">',
                'prev_tag_close' => '</li>',
                'num_tag_open' => '<li class="page-item">',
                'num_tag_close' => '</li>',
                'cur_tag_open' => '<li class="page-item"><a class="active">',
                'cur_tag_close' => '</a></li>',   

            ];

            $this->pagination->initialize($config);
            if ($this->uri->segment(4) === FALSE) {
                $room_id = 0;
            } else {
                $room = $this->uri->segment(4);
                $room_id = (double)$room;
            }
            if ($room_id == null) {
                $room_id = 0;  
            } 
            //$data["links"] = $this->pagination->create_links();

            $this->load->model('Room_m');
            $queryString = $this->input->get('q');
            $params['queryString'] = $queryString;
            $room = $this->Room_m->getAllRooms($params, $config['per_page'], $room_id);
            $data['room'] = $room;
            $this->load->view('admin/room/list', $data);
        }
        public function getRoomById($id) {
            $room = $this->Room_m->getRoom($id);
            $this->load->view('admin/room/edit');
            echo json_encode($room);
        }
        public function loadCreatePage() {
            $this->load->view('admin/room/create');
        }

        public function getRoomType() {
            $roomType = $this->Room_m->getRoomType();
            echo json_encode( $roomType);
        }

        public function getRoomArea($roomTypeId) {
            $roomArea = $this->Room_m->getRoomArea($roomTypeId);
             echo json_encode( $roomArea);
        }

        public function getRoomNumber($roomTypeId) {
            $roomNumber = $this->Room_Number_M->getRoomNumber($roomTypeId);
            echo json_encode($roomNumber);
        }

        public function create(){
            $this->load->model('Room_m');
            
            $config['upload_path']          = './public/uploads/room';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['encrypt_name']        = true;  
            $config['maintain_ratio']   = TRUE;  

            $this->load->library('upload', $config);

            $this->load->library('form_validation');

           // $this->form_validation->set_error_delimiters('<p class="error">','</p>');
            $this->form_validation->set_rules('roomnumber','RoomNumber','trim|required');
            $this->form_validation->set_rules('roomtype','RoomType','trim|required');
            $this->form_validation->set_rules('beds','Beds','trim|required');
            $this->form_validation->set_rules('capacity','RoomType','trim|required');
            $this->form_validation->set_rules('price','Price','trim|required');
            $this->form_validation->set_rules('roomdetails','RoomDetails','trim|required');
            $this->form_validation->set_rules('isactive','Isactive','trim|required');
            $this->form_validation->set_rules('adult','Adult','trim|required');
            $this->form_validation->set_rules('child','Child','trim|required');
            $this->form_validation->set_rules('roomarea','roomarea','trim|required');

            if($this->form_validation->run() == true  && $this->upload->do_upload('roomImage') ){

                $formArray['roomnumber'] = $this->input->post('roomnumber');
                $formArray['roomtype'] = $this->input->post('roomtype');
                $formArray['beds'] = $this->input->post('beds');
                $formArray['capacity'] = $this->input->post('capacity');
                $formArray['price'] = $this->input->post('price');
                $formArray['roomdetails'] = $this->input->post('roomdetails');
                $formArray['isactive'] = $this->input->post('isactive');
                $formArray['adult'] = $this->input->post('adult');
                $formArray['child'] = $this->input->post('child');
                $formArray['area'] = $this->input->post('roomarea');
                $formArray['cd'] = date('Y-m-d H:i:s');
                $formArray['roomBook'] = 0;
                // for roomnumber and roomnumberfkid
                if($formArray['roomnumber'] != null || $formArray['roomnumber'] != '') {
                    $fkrooNumberId = $formArray['roomnumber'];
                    $roomNumber = $this->Room_Number_M->getRoomNumberById($fkrooNumberId);
                    $formArray['roomnumber'] = $roomNumber['roomnumber'];
                    $formArray['fkroomnumberid'] = $roomNumber['id'];

                    if($formArray['roomnumber'] != null || $formArray['roomnumber'] != ''){
                        $roomNumberId = $formArray['fkroomnumberid'];
                        $this->Room_Number_M->setRoomBookByRoomNumber($roomNumberId);
                    }
                }
                /// for roomtypeid and roomtype
                if($formArray['roomtype'] != null || $formArray['roomtype'] != '') {
                    $fkroomtypeid = $formArray['roomtype'];
                    $roomTYpeId = $this->Room_Type_M->getRoomTypeById($fkroomtypeid);
                    $formArray['roomtype'] = $roomTYpeId['roomtype'];
                    $formArray['fkroomtypeid'] = $roomTYpeId['id'];
                }

                // for room area
                if($formArray['area'] != null || $formArray['area'] != '') {
                    $roomAreaId = $formArray['area'];
                    $roomArea = $this->Room_Area_M->getRoomAreaById($roomAreaId);
                    $formArray['area'] = $roomArea['area'];
                    $formArray['fkroomarea'] = $roomArea['id'];
                    
                }

                $this->Room_m->create($formArray);

                $data = $this->upload->data();

                // get last id
                $lastRoomId = $this->Room_m->getLastRoomId();

                if($data != null || $data != '') {
                    $imageArray['imagename'] = $data['raw_name'].$data['file_ext'];
                }
                $image_path = base_url("/public/uploads/room/".$data['raw_name'].$data['file_ext']);
                //resize
                $this->resize($data['full_path'], $data['file_name']);

                //after resizing saving rsize image in db
                $image_path = base_url("/public/uploads/room/newimage/".$data['raw_name'].$data['file_ext']);
                //$formArray['roomimage'] = $image_path;
                $imageArray['fkroomimgid'] = $lastRoomId['id'];
                $imageArray['imagepath'] = $image_path;
                $imageArray['isactive'] = 1;
                $imageArray['cd'] = date('Y-m-d H:i:s');

                $this->Room_Image_M->create($imageArray);

                $this->session->set_flashdata('success','Room Added Successfuly');
                redirect(base_url().'admin/room/index');
            }else{  
                $upload_error = $this->upload->display_errors();
                $this->load->view('admin/room/create', compact('upload_error')); 
            }
            
        }

        //resize image

        public function resize($path, $file) {
            $config['image_library'] = 'gd2';
            $config['source_image'] = $path;
            //$config['create_thumb'] = TRUE;
            $config['maintain_ratio'] = TRUE;
            $config['width']         = 300;
            $config['height']       = 275;
            $config['new_image']  = './public/uploads/room/newimage/'.$file;

            $this->image_lib->initialize($config); 
            $this->image_lib->resize();
        } 


        //edit function for room
        public function edit($id){
            $this->load->model('Room_m');
            $room = $this->Room_m->getRoom($id);

            if(!empty($error)) {
                $this->session->set_flashdata('error','Room not found');
                redirect(base_url().'admin/room/index');
            }

            $config['upload_path']          = './public/uploads/room';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['encrypt_name']        = true;
            //$config['create_thumb']     = TRUE;
            $this->load->library('upload', $config);
            
          
         
            $this->load->library('form_validation');

           // $this->form_validation->set_error_delimiters('<p class="error">','</p>');
            $this->form_validation->set_rules('roomnumber','RoomNumber','trim|required');
            $this->form_validation->set_rules('roomtype','RoomType','trim|required');
            $this->form_validation->set_rules('beds','Beds','trim|required');
            $this->form_validation->set_rules('capacity','RoomType','trim|required');
            $this->form_validation->set_rules('price','Price','trim|required');
            $this->form_validation->set_rules('roomdetails','RoomDetails','trim|required');
            $this->form_validation->set_rules('isactive','Isactive','trim|required');
            $this->form_validation->set_rules('adult','Adult','trim|required');
            $this->form_validation->set_rules('child','Child','trim|required');
            $this->form_validation->set_rules('roomarea','roomarea','trim|required');

            
            if($this->form_validation->run() == true  && $this->upload->do_upload('roomImage') ){
                $formArray['roomnumber'] = $this->input->post('roomnumber');
                $formArray['roomtype'] = $this->input->post('roomtype');
                $formArray['beds'] = $this->input->post('beds');
                $formArray['capacity'] = $this->input->post('capacity');
                $formArray['price'] = $this->input->post('price');
                $formArray['roomdetails'] = $this->input->post('roomdetails');
                $formArray['isactive'] = $this->input->post('isactive');
                $formArray['adult'] = $this->input->post('adult');
                $formArray['child'] = $this->input->post('child');
                $formArray['area'] = $this->input->post('roomarea');
                $formArray['id'] = $id;
                $formArray['roomBook'] = 0;

                $formArray['md'] = date('Y-m-d H:i:s');

                 // for roomnumber and roomnumberfkid
                if($formArray['roomnumber'] != null || $formArray['roomnumber'] != '') {
                    $fkrooNumberId = $formArray['roomnumber'];
                    $roomNumber = $this->Room_Number_M->getRoomNumberById($fkrooNumberId);
                    $formArray['roomnumber'] = $roomNumber['roomnumber'];
                    $formArray['fkroomnumberid'] = $roomNumber['id'];

                    if($formArray['roomnumber'] != null || $formArray['roomnumber'] != ''){
                        $roomNumberId = $formArray['fkroomnumberid'];
                        $this->Room_Number_M->setRoomBookByRoomNumber($roomNumberId);
                    }
                    $roomNumberData = $this->Room_m->getRoom($formArray['id']);
                    if($roomNumberData['id'] != null && $roomNumberData['roomnumber'] != null ) {
                        $this->Room_Number_M->unsetIsRoomAddes($roomNumberData['fkroomnumberid']);
                    }
                }
                /// for roomtypeid and roomtype
                if($formArray['roomtype'] != null || $formArray['roomtype'] != '') {
                    $fkroomtypeid = $formArray['roomtype'];
                    $roomTYpeId = $this->Room_Type_M->getRoomTypeById($fkroomtypeid);
                    $formArray['roomtype'] = $roomTYpeId['roomtype'];
                    $formArray['fkroomtypeid'] = $roomTYpeId['id'];
                }

                // for room area
                if($formArray['area'] != null || $formArray['area'] != '') {
                    $roomAreaId = $formArray['area'];
                    $roomArea = $this->Room_Area_M->getRoomAreaById($roomAreaId);
                    $formArray['area'] = $roomArea['area'];
                    $formArray['fkroomarea'] = $roomArea['id'];
                    
                }
                $this->Room_m->update($formArray['id'], $formArray);

                $data = $this->upload->data();

                $filePath = './public/uploads/room/'.$room['imagename'];
                if(file_exists($filePath)) {
                    unlink($filePath);
                }

                // get last id
                //$lastRoomId = $this->Room_m->getLastRoomId();
                
                if($data != null || $data != '') {
                    $imageArray['imagename'] = $data['raw_name'].$data['file_ext'];
                }
                $image_path = base_url("/public/uploads/room/".$data['raw_name'].$data['file_ext']);
                //resize
                $this->resize($data['full_path'], $data['file_name']);

                //after resizing saving rsize image in db
                $image_path = base_url("/public/uploads/room/newimage/".$data['raw_name'].$data['file_ext']);
                //$formArray['roomimage'] = $image_path;
                $imageArray['fkroomimgid'] = $formArray['id'];
                $imageArray['imagepath'] = $image_path;
                $imageArray['isactive'] = 1;
                $imageArray['cd'] = date('Y-m-d H:i:s');

                $roomImageId = $this->Room_Image_M->getRoomImageId($formArray['id']);

                $this->Room_Image_M->update($roomImageId['id'], $imageArray);
                // if($data != null || $data != '') {
                //     $formArray['imagename'] = $data['raw_name'].$data['file_ext'];
                // }
                
                // $image_path = base_url("/public/uploads/room/".$data['raw_name'].$data['file_ext']);
        
                // $filePath = './public/uploads/room/newimage/'.$room['imagename'];
                // if(file_exists($filePath)) {
                //     unlink($filePath);
                // }
                // $this->resize($data['full_path'], $data['file_name']);
                // $image_path = base_url("/public/uploads/room/newimage/".$data['raw_name'].$data['file_ext']);
                // $formArray['roomimage'] = $image_path;

                // $this->Room_m->update($id, $formArray);

                $this->session->set_flashdata('success','Room Upadated Successfuly');
                redirect(base_url().'admin/room/index');
                
            } else {
                $data['room'] = $room;
                $this->load->view('admin/room/edit',$data);
            }    
           


        }

        public function delete($id){
            $this->load->model('Room_m');
            $room = $this->Room_m->getRoom($id);

            if(!empty($error)) {
                $this->session->set_flashdata('error','Room not found');
                redirect(base_url().'admin/room/index');
            }
            $room = $this->Room_m->delete($id);
            $roomImageId = $this->Room_Image_M->getRoomImageId($id);
            if($roomImageId != null || $roomImageId != '') {
                $this->Room_Image_M->delete($roomImageId);
            }
            $filePath = './public/uploads/room/'.$room['imagename'].'.'.jpg;
            if(file_exists($filePath)) {
                unlink($filePath);
            }
            $this->session->set_flashdata('success','Room Deleted Successfuly');
            redirect(base_url().'admin/room/index');
        }


	}

?>