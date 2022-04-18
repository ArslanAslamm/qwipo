$(document).ready(function () {
    var acceptedImageExtensions = ["png", "jpg", "jpeg", "svg"];
    $("body").on("click", "#addAdvisor", function () {

        var name = $.trim($("#name").val());
        var designation = $.trim($("#designation").val());
        var linkedin_url = $.trim($("#linkedin_url").val());
        var image_name = $("#file").val();
        var files = $('#file')[0].files;

        if (name == "" || name == null) {
            messageDisplay("Please enter name", 1500, "error");
            $("#name").focus();
            return false;
        }
        if (designation == "" || designation == null) {
            messageDisplay("Please enter designation", 1500, "error");
            $("#designation").focus();
            return false;
        }
        // if (linkedin_url == "" || linkedin_url == null) {
        //     messageDisplay("Please enter linkedin url", 1500, "error");
        //     $("#linkedin_url").focus();
        //     return false;
        // }
        if (image_name == "" || image_name == null) {
            messageDisplay("Please upload Banner", 1500, "error");
            return false;
        }

        var Data = new FormData();
        Data.append('name', name);
        Data.append('designation', designation);
        Data.append('linkedin_url', linkedin_url);

        for (var i = 0; i < files.length; i++) {
            Data.append('files', files[i]); // we can put more than 1 image file
        }
        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/add-advisor',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/advisor";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    }).on("change", "#file", function (e) {
        if ($(this).get(0).files.length !== 0) {
            var files = e.target.files;
            $.each(files, function (i, file) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var FileType = files[i].type;
                    var filename = files[i].name;
                    var Extension = filename.split('.').pop();
                    if ($.inArray(Extension, acceptedImageExtensions) === -1) {
                        messageDisplay("Invalid File", 1500, "error");
                        $("#file").val('');
                        return false;
                    }
                    $("#feature_img").attr("src", e.target.result);
                };
                reader.readAsDataURL(file);
            });
            $("#feature_img").removeClass("d-none");
        } else {
            $("#feature_img").addClass("d-none");

        }
    })
});
