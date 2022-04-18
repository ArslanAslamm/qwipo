$(document).ready(function () {
    
    $("body").on("click", "#addFeatureHeading", function () {

        var featureHeading = $.trim($("#featureHeading").val());
        var featureSubHeading = $.trim($("#featureSubHeading").val());
        
        if (featureHeading == "" || featureHeading == null) {
            messageDisplay("Please enter heading", 1500, "error");
            $("#featureHeading").focus();
            return false;
        }
        if (featureSubHeading == "" || featureSubHeading == null) {
            messageDisplay("Please enter sub heading", 1500, "error");
            $("#featureSubHeading").focus();
            return false;
        }
        
        var Data = new FormData();
        Data.append('featureHeading', featureHeading);
        Data.append('featureSubHeading', featureSubHeading);

        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/add-feature-heading',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/features";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    })
});
