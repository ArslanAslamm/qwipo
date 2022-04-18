
    $(document).ready(function () {

        $("body").on("click", "#delete_home_banner", function () {

            var homeBannerid = $(this).attr("data-id");

            $.post(BASE_URL + "/admin/delete-home-banner", {id: homeBannerid}, function (response) {
                console.log(response);
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");

                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/admin-home";

                    }, 2000)
                } else {
                    messageDisplay(response.message, 2000, "error");

                }
            });

            return false;

        })
        $('#Table').dataTable({
            "ordering": false,
            "language": {
                "paginate": {
                    "previous": "<",
                    "next": ">"
                }
            }
        });
    });

