$('document').ready(function(){
    contact.init();
});
var contact = new ContactUs();

function ContactUs() {
    var basePath  = window.location.origin;
    var bean = {};
    this.init = init;
    this.saveContactUs = saveContactUs;

    function init() {
        $(".success-div").hide();
        $(".error-div").hide();
    }
    function saveContactUs() {
        var bean = prepareBean ();
        if(!firstNameValidation() || !emailValidation() || !subjectValidation() || !messageValidation()) {
            return false;
        }
      
        $.ajax({
			url : basePath + "/Hmss/" + "home/contactUs/saveContactUs",
			type : 'POST',
            dataType : 'json',
            data: {'data': bean},
            //contentType: "application/json",
            // mimeType: "application/json", 
			success : function(response){
            
				if(response.success == true){
                    $('.success-div').show().html(response.msg);
                }
                if(response.error == true) {
                    $('.error-div').show().html(response.msg);
                    //scrollToTop();
                }

			}

		});
    }

    function prepareBean() {
        //bean['fkroomid'] = $('#id').val();
        bean['name'] = $('#name').val();
        bean['email'] = $('#email').val();
        bean['subject'] = $('#subject').val();
        bean['message'] = $('#message').val();
        return bean;
    }

    function firstNameValidation() {
        var firstName = $('#name').val();
        if(firstName == null || firstName == '' || firstName == undefined) {
            $('.error-div').show().html("Please Enter Firstname");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function emailValidation() {
        var email = $('#email').val();
        var emailRegx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(email == null || email == '' || email == undefined) {
            $('.error-div').show().html("Please Enter email");
		    scrollToTop();
            return false;
        }
        if(!emailRegx.test(email)){
            $('.error-div').show().html("Email Id is not valid");
		    scrollToTop();
            return false
        }
        return true;
    }
    function subjectValidation() {
        var subject = $('#subject').val();
        if(subject == null || subject == '' || subject == undefined) {
            $('.error-div').show().html("Please Enter subject");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function messageValidation() {
        var message = $('#message').val();
        if(message == null || message == '' || message == undefined) {
            $('.error-div').show().html("Please Enter message");
		    scrollToTop();
            return false;
        }
        return true;
    }



}