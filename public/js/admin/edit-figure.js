$(document).ready(function () {
    
    
    $("body").on("click", "#editStatistic", function () {
        
        var editMarketCoverage = $.trim($("#editMarketCoverage").val()); 
        var editGeographicalAreas = $.trim($("#editGeographicalAreas").val()); 
        var editMonthlySupply = $.trim($("#editMonthlySupply").val()); 
        var editActiveClient = $.trim($("#editActiveClient").val()); 
        
        var statisticsId = $(this).attr("data-id");

        if (editMarketCoverage == "" || editMarketCoverage == null) {
            messageDisplay("Please enter market coverage", 1500, "error");
            $("#editMarketCoverage").focus();
            return false;
        }
        if (editGeographicalAreas == "" || editGeographicalAreas == null) {
            messageDisplay("Please enter geographical areas", 1500, "error");
            $("#editGeographicalAreas").focus();
            return false;
        }
        if (editMonthlySupply == "" || editMonthlySupply == null) {
            messageDisplay("Please enter monthly supply", 1500, "error");
            $("#editMonthlySupply").focus();
            return false;
        }
        if (editActiveClient == "" || editActiveClient == null) {
            messageDisplay("Please enter active clients", 1500, "error");
            $("#editActiveClient").focus();
            return false;
        }
        var Data = new FormData();
        Data.append('editMarketCoverage', editMarketCoverage);
        Data.append('editActiveClient', editActiveClient);
        Data.append('editMonthlySupply', editMonthlySupply);
        Data.append('editGeographicalAreas', editGeographicalAreas);
        Data.append('statisticsId', statisticsId);
    
        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/update-figure',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/figure";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    });
});
