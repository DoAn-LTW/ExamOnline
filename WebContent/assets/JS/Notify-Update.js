 jQuery(document).ready(function($) {
                $("#btn-CN").click(function(e) {
                    var url;
                    url = "Notify-Update.jsp";
                    $("#update-success").load("Notify-Update.jsp #CNCH");
                });
            });
jQuery(document).ready(function($) {
    $("#CSCH").click(function(e) {
        var url;
        url = "NguoiQTNHCH-ChinhSuaCH.jsp";
        $("#Update-CSCH").load(url);
    });
});

jQuery(document).ready(function($) {
    $("#btn-CN-import").click(function(e) {
        var url;
        url = "Notify-Update.jsp";
        $("#update-success").load(url);
    });
});
jQuery(document).ready(function($) {
   $("#btn-CN-CSCH").click(function(e) {
        var url;
        url="Notify-Update.jsp";
        $("#update-success").load("Notify-Update.jsp #CNCH");
    }); 
  });
