var roomEdit = new RoomEdit ();

function RoomEdit() {
    this.setData = setData;
    

    function setData() {
        var roomId = "<?php echo $room['fkroomtypeid']; ?>";
        $("#roomtype").val(roomId);
    }

}


