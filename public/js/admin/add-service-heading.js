$(document).ready(function () {
    
    $("body").on("click", "#addServiceHeading", function () {

        var serviceHeading = $.trim($("#serviceHeading").val());
        var serviceSubHeading = $.trim($("#serviceSubHeading").val());
        
        if (serviceHeading == "" || serviceHeading == null) {
            messageDisplay("Please enter heading", 1500, "error");
            $("#serviceHeading").focus();
            return false;
        }
        if (serviceSubHeading == "" || serviceSubHeading == null) {
            messageDisplay("Please enter sub heading", 1500, "error");
            $("#serviceSubHeading").focus();
            return false;
        }
        
        var Data = new FormData();
        Data.append('serviceHeading', serviceHeading);
        Data.append('serviceSubHeading', serviceSubHeading);

        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/add-service-heading',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/service";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    })
});
