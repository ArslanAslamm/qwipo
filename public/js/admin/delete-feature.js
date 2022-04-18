
    $(document).ready(function () {

        $("body").on("click", "#deleteFeatures", function () {

            var featureId = $(this).attr("data-id");

            $.post(BASE_URL + "/admin/delete-features", {id: featureId}, function (response) {
                console.log(response);
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");

                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/features";

                    }, 2000)
                } else {
                    messageDisplay(response.message, 2000, "error");

                }
            });

            return false;

        })
        
    });

