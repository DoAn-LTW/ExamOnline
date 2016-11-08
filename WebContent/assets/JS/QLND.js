jQuery(document).ready(function($) {
                $("#QLND").click(function(e) {
                    var url;
                    url = "NguoiRaDe-QLND.jsp";
                    $("#Update-QLND").load(url);
                });
            });
 jQuery(document).ready(function($) {
                $("#btn-CN").click(function(e) {
                    var url;
                    url = "Notify-Update.jsp";
                    $("#update-success").load("Notify-Update.jsp #CND");
                });
            });
