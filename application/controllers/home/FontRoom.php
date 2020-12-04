<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

    class FontRoom extends CI_Controller {
        
        public function index(){
            parent::__construct();
            $this->load->model('frontModel/frontRoomModel');
            
            $this->load->helper('url');
            $this->load->library('email');
        }

        public function checkRoomValidRoom($id) {
            $this->load->model('frontModel/frontRoomModel');
            
            $fkroomid = $id;
            $roomData = $this->frontRoomModel->checkRoomBooked($fkroomid);
            if($roomData != null || $roomData != '') {
                $return['Error'] = true;
                $return['msg'] = "Room is not available";
                echo json_encode($return);
            } else {
                $return['Success'] = true;
                echo json_encode($return);
            }
        }

        public function saveRoom() {
            //$this->load->library('email');   
            $this->load->model('frontModel/frontRoomModel');
            $room = $this->input->post('data');
            
            $roomData = $this->frontRoomModel->checkRoomBooked($room['fkroomid']);
            
            if($roomData != null || $roomData != '' && sizeof($roomData) > 0) {
                $return['error'] = true;
                $return['msg'] = "Room is not available";
                echo json_encode($return);
                return false;
            }

            $room['cd'] = date('Y-m-d H:i:s');
            
            // create unique booking id
            $today = date("Ymd");
            $rand = strtoupper(substr(uniqid(sha1(time())),0,4));
            $bookingid = $today . $rand;

            $room['bookingid'] = $bookingid;

            //set total price
            $price = $room['price'];
            $days = $room['days'];
            if($price != null || $price != '') {
                $total_price = $price * $days; 

                if($total_price == $room['total_price']) {
                    $room['total_price'] = $total_price;
                } else {
                    $return['error'] = true;
                    $return['msg'] = "Room Price Is Not Appropriate";
                    echo json_encode($return);
                    //$this->load->view('home/home/roomBookDetails/');
                    return false;
                }
            }
            

             $id = $room['fkroomid'];
             $roomData = $this->frontRoomModel->getRoomById($id);

            // $room['fkroomid'] = $roomData['id'];
            
            if($id != $roomData['id']) {
                $return['error'] = true;
                $return['msg'] = "Please Try Another Room";
                echo json_encode($return);
                return false;
            } else {
                $this->frontRoomModel->setRoomBook($id);
            }

            $this->frontRoomModel->create($room);
            
            $return['success'] = true;
            $return['msg'] = "Room Successfully Booked";
            
            $to = $room['email'];
            $this->email($to);

            echo json_encode($return);
           

        }

        public function email($to) {
            $config = array();
            $config['useragent']        = 'CodeIgniter';            // Mail engine switcher: 'CodeIgniter' or 'PHPMailer'
            $config['protocol']         = 'smpt';                   // 'mail', 'sendmail', or 'smtp'
            //$config['mailpath']         = '/usr/sbin/sendmail';
            $config['smtp_host']        = 'smtp.googlemail.com';
            $config['smtp_user']        = 'youremail@gmail.com';
            $config['smtp_pass']        = '*****';
            $config['smtp_port']        = 465;
            $config['smtp_timeout']     = 20;                        // (in seconds)
            $config['smtp_crypto']      = 'tls';                    // '' or 'tls' or 'ssl'
            $config['smtp_debug']       = 0;                        // PHPMailer's SMTP debug info level: 0 = off, 1 = commands, 2 = commands and data, 3 = as 2 plus connection status, 4 = low level data output.
            $config['wordwrap']         = true;
            //$config['wrapchars']        = 76;
            $config['mailtype']         = 'html';                   // 'text' or 'html'
            $config['charset']          = 'ISO-8859-15';                     // 'UTF-8', 'ISO-8859-15', ...; NULL (preferable) means config_item('charset'), i.e. the character set of the site.
            $config['validate']         = true;
            $config['priority']         = 1;                        // 1, 2, 3, 4, 5; on PHPMailer useragent NULL is a possible option, it means that X-priority header is not set at all, see https://github.com/PHPMailer/PHPMailer/issues/449
            $config['crlf']             = "\r\n";                   // "\r\n" or "\n" or "\r"
            $config['newline']          = "\r\n";                   // "\r\n" or "\n" or "\r"
            $config['bcc_batch_mode']   = false;
            $config['bcc_batch_size']   = 200;
            $config['encoding']         = '8bit'; 
           
            $this->load->library('email');

            $this->email->initialize($config);
            $this->email->from('youremail@gmail.com','xyz');
            $this->email->to($to);
            $this->email->subject("Room Booking"); 
            $this->email->message('The email send using codeigniter library'); 
            //$this->email->send();

            if($this->email->send()){
                $this->email->print_debugger(); 
                $this->session->set_flashdata("email_sent","Congragulation Email Send Successfully.");
                //echo "email_sent";
            }
            else{
                show_error($this->email->print_debugger());
                echo "Email has been send";   
            }
        }


    }

?>    