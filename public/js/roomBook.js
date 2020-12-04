$('document').ready(function(){
    roomBook.init();
});
var roomBook = new RoomBook();

function RoomBook() {

    var basePath  = window.location.origin;
    var days = 0;
    var bean = {};
    var price = 0;

    this.init = init;
    this.scrollToTop = scrollToTop;
    this.setTotal = setTotal;
    this.firstNameValidation = firstNameValidation;
    this.lastNameValidation = lastNameValidation;
    this.emailValidation = emailValidation;
    this.checkInValidation = checkInValidation;
    this.checkOutValidation = checkOutValidation;
    this.adultValidation = adultValidation;
    this.arrivalTimeValidation = arrivalTimeValidation;
    this.bookRoom = bookRoom;
    this.checkRoomValid = checkRoomValid; 
    this.relocateHome = relocateHome;

    function init() {
        $(".success-div").hide();
        $(".error-div").hide();
        document.getElementById("check-in").min = new Date().getFullYear() + "-" +  parseInt(new Date().getMonth() + 1 ) + "-" + new Date().getDate()
        document.getElementById("check-out").min = new Date().getFullYear() + "-" +  parseInt(new Date().getMonth() + 1 ) + "-" + new Date().getDate()
        price = $('.price').html();
        $("#newUserPopup").hide();
        //$("#thankYouModal").hide();
    }

    function scrollToTop(){
		document.documentElement.scrollTop = 0;
    } 
    
    function setTotal() {
        var orgPrice = $('.price').html();
        var startDate = $('#check-in').val();
        var endDate = $('#check-out').val();
        var startDay = startDate.split('-');
        var endDay   = endDate.split('-');

        var start = startDay['2'];
        var end = endDay['2'];

        var diff = end - start;
        if(diff >= 2) {
            var total_price = orgPrice * diff;
            $('.price').html(total_price);
        }
        days = diff;
    }

    function bookRoom() {

        var bean = prepareBean ();
        //checkRoomValid(bean.fkroomid);
        var startDate = $('#check-in').val();
        var endDate = $('#check-out').val();
        if(startDate == endDate) {
            alert("Please select differnte Check out date ");
            return false;
        }

        if(!firstNameValidation() || !lastNameValidation() || !emailValidation() || !checkInValidation() || 
         !checkInValidation() || !checkOutValidation() || !adultValidation() ) {
            return false;
        }
      
        $.ajax({
			url : basePath + "/Hmss/" + "home/FontRoom/saveRoom",
			type : 'POST',
            dataType : 'json',
            data: {'data': bean},
            //contentType: "application/json",
            // mimeType: "application/json", 
			success : function(response){
            
				if(response.success == true){
                    $("#newUserPopup").modal();
                    setTimeout(window.location.href = "http://localhost:8081/Hmss/home/home/index", 300000);
                    //$("#newUserPopup").hide();
                }
                if(response.error == true) {
                    $('.error-div').show().html(response.msg);
                    scrollToTop();
                }

			}

		});


    }

    function checkRoomValid(id) {
        var id = id;
        $.ajax({
			url : basePath + "/Hmss/" + "home/FontRoom/checkRoomValidRoom/"+id,
			type : 'GET',
            dataType : 'json',
            //data: {'id': id},
            // contentType: "application/json",
            // mimeType: "application/json", 
			success : function(response){
				if(response.Error == true){
                    $('.error-div').show().html(response.msg);
                    scrollToTop();
                    return false;
                }
                

			}

		});
    }

    function relocateHome() {
        setTimeout(window.location.href = "http://localhost:8081/Hmss/home/home/index", 150000);
    }

    function prepareBean() {
        bean['fkroomid'] = $('#id').val();
        bean['first_name'] = $('#firstName').val();
        bean['last_name'] = $('#lastName').val();
        bean['email'] = $('#email').val();
        bean['check_in_time'] = $('#check-in').val();
        bean['check_out_time'] = $('#check-out').val();
        bean['adult'] = $('#adult').val();
        bean['child'] = $('#child').val();
        bean['price'] = price;
        bean['total_price'] = $('.price').html();
        bean['arrivalTime'] = $('#arrivalTime').val();
        bean['days'] = days;
        return bean;
    }

    function firstNameValidation() {
        var firstName = $('#firstName').val();
        if(firstName == null || firstName == '' || firstName == undefined) {
            $('.error-div').show().html("Please Enter Firstname");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function lastNameValidation() {
        var lastName = $('#lastName').val();
        if(lastName == null || lastName == '' || lastName == undefined) {
            $('.error-div').show().html("Please Enter lastName");
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
    function checkInValidation() {
        var checkIn = $('#check-in').val();
        if(checkIn == null || checkIn == '' || checkIn == undefined) {
            $('.error-div').show().html("Please Select Check In Date");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function checkOutValidation() {
        var checkOut = $('#check-out').val();
        if(checkOut == null || checkOut == '' || checkOut == undefined) {
            $('.error-div').show().html("Please Select Check Out Date");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function adultValidation() {
        var adult = $('#adult').val();
        if(adult == null || adult == '' || adult == undefined) {
            $('.error-div').show().html("Please Select Adult");
		    scrollToTop();
            return false;
        }
        return true;
    }
    function arrivalTimeValidation() {
        var arrivalTime = $('#arrivalTime').val();
        if(arrivalTime == null || arrivalTime == '' || arrivalTime == undefined) {
            $('.error-div').show().html("Please Select Arrival Time");
		    scrollToTop();
            return false;
        }
        return true;
    }
    

}