$(document).ready(function () {
    
    $("body").on("click", "#addStatistics", function () {

        var statisticHeading = $.trim($("#statisticHeading").val());
        var statisticSubHeading = $.trim($("#statisticSubHeading").val());
        
        if (statisticHeading == "" || statisticHeading == null) {
            messageDisplay("Please enter heading", 1500, "error");
            $("#statisticHeading").focus();
            return false;
        }
        if (statisticSubHeading == "" || statisticSubHeading == null) {
            messageDisplay("Please enter sub heading", 1500, "error");
            $("#statisticSubHeading").focus();
            return false;
        }
        
        var Data = new FormData();
        Data.append('statisticHeading', statisticHeading);
        Data.append('statisticSubHeading', statisticSubHeading);

        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/add-statistics-heading',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/statistics";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    })
});
