$('document').ready(function(){
    room.init();
});

var room = new Room ();
function Room () {
    
    var basePath  = window.location.origin;

	this.loadRoomType = loadRoomType;
	this.init = init;
    this.loadRoomArea = loadRoomArea;
    this.loadRoomNumber = loadRoomNumber;
    this.edit = edit;
    

    function init() {
        $(".error-div").hide();
        loadRoomType();
    }
	function loadRoomType() { 

		$.ajax({
			url : basePath + "/Hmss/" + "admin/room/getRoomType",
			type : 'POST',
			dataType : 'json',
			success : function(response){
				if(response.length != 0){
                    var html;
                    $('#roomtype').append($('<option/>', {
                        value : "",
                        text : "Select Room Type"
                    }));
                    $.each(response, function (i, value) {
                        
                        html += ('<option value="' + value.id + '">' + value.roomtype + '</option>');
        
                    });
                    $("#roomtype").append(html);

                } 
			}

		});
	
	} 
    
    function loadRoomArea() {
        var roomTypeId = $("#roomtype").val();
        var html;
        if(roomTypeId == null || roomTypeId == undefined || roomTypeId == "") {
            $("#roomarea").empty();
            html += ('<option value="' + "" + '">' + "Select Room Area" + '</option>');
            $("#roomarea").append(html);
            return false; 
        }
        $.ajax({
			url : basePath + "/Hmss/" + "admin/room/getRoomArea/"+roomTypeId,
            type : 'POST',
            data : {'roomTypeId': roomTypeId},
			dataType : 'json',
			success : function(response){
                $("#roomarea").empty();
				if(response.length != 0){
                    $(".error-div").hide();
                    html += ('<option value="' + "" + '">' + "Select Room Area" + '</option>');
                    $.each(response, function (i, value) {
                        html += ('<option value="' + value.id + '">' + value.area + '</option>');
        
                    });
                    $("#roomarea").append(html);
                } else {
                    html += ('<option value="' + "" + '">' + "Select Room Area" + '</option>');
                    var msg = "Please Select Another Room Type";
                    $(".error-div").show().html(msg);
                    $("#roomarea").append(html);
                }
			}

        });
        
    } 


    function loadRoomNumber() { 
        var roomtype = $('#roomtype').val();
        var html;
        if(roomtype == null || roomtype == undefined || roomtype == "") {
            $("#roomnumber").empty();
            html += ('<option value="' + "" + '">' + "Select Room Number" + '</option>');
            $("#roomnumber").append(html);
            return false; 
        }
		$.ajax({
			url : basePath + "/Hmss/" + "admin/room/getRoomNumber/"+roomtype,
			type : 'POST',
			dataType : 'json',
			success : function(response){
                $("#roomnumber").empty();
				if(response.length != 0){                  
                    var html;
                    $.each(response, function (i, value) {
                        html += ('<option value="' + value.id + '">' + value.roomNumber + '</option>');
        
                    });
                    $("#roomnumber").append(html);
                } else {
                    html += ('<option value="' + "" + '">' + "Select Room Number" + '</option>');
                    var msg = "Please Select Another Room Type";
                    $(".error-div").show().html(msg);
                    $("#roomnumber").append(html);
                } 
			}

		});
	
    } 
    
    function edit(id) {
        var id = id;
        //alert (basePath + "/Hmss/" + "admin/room/getRoomById/"+id);
		$.ajax({
            url : basePath + "/Hmss/" + "admin/room/getRoomById/"+id,
            type : 'GET',
            data : {'id': id},
			dataType : 'json',
			success : function(response){
               alert(response);
				if(response.length != 0){                  
                    //window.location.href = basePath + "/Hmss/" + "admin/room/edit ";
                } 
			}

		});




    }
	
	
}
