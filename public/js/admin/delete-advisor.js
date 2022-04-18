
    $(document).ready(function () {

        $("body").on("click", "#deleteAdvisor", function () {

            var Id = $(this).attr("data-id");

            $.post(BASE_URL + "/admin/delete-advisor", {id: Id}, function (response) {
                console.log(response);
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");

                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/advisor";

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

