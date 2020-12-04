<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Common extends CI_Controller {
    function __construct() {
        parent::__construct();
    }


    public function sendEmail($emailId) {
        return $emailId;
    } 


} 

?>    