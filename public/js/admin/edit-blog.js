$(document).ready(function () {
    
    tinymce.init(
    {
    selector: '#editblogDescription',
   plugins: [
    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
    'searchreplace wordcount visualblocks visualchars code fullscreen',
    'insertdatetime media nonbreaking save table contextmenu directionality',
    'emoticons template paste textcolor colorpicker textpattern imagetools codesample',
    'image code',
    'placeholder'
    ],
    menubar: true,
    statusbar: false,
    toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
    image_title: true,
    automatic_uploads: true,
    /* paste_as_text: true,*/
    paste_data_images: true,
    file_picker_types: 'image',
    file_picker_callback: function (cb, value, meta) {
    var input = document.createElement('input');
    input.setAttribute('type', 'file');
    input.setAttribute('accept', 'image/*');
    input.onchange = function () {
    var file = this.files[0];

    var reader = new FileReader();
    reader.onload = function () {
    var id = 'blobid' + (new Date()).getTime();
    var blobCache = tinymce.activeEditor.editorUpload.blobCache;
    var base64 = reader.result.split(',')[1];
    var blobInfo = blobCache.create(id, file, base64);
    blobCache.add(blobInfo);
    cb(blobInfo.blobUri(), {title: file.name});
    };
    reader.readAsDataURL(file);
    };

    input.click();
    }
}
);
    var acceptedImageExtensions = ["png", "jpg", "jpeg", "svg"];
    $("body").on("click", "#editBlogs", function () {

        var blogTitle = $.trim($("#editblogTitle").val());
        var blogUrl = $.trim($("#editblogUrl").val());
        var datepicker = $.trim($("#datepicker").val());
        var description =$.trim(tinymce.get('editblogDescription').getContent());
        var blogId = $(this).attr("data-id");
        var image_name = $("#file").val();
        var files = $('#file')[0].files;

        if (blogTitle == "" || blogTitle == null) {
            messageDisplay("Please enter title", 1500, "error");
            $("#blogTitle").focus();
            return false;
        }
        if (blogUrl == "" || blogUrl == null) {
            messageDisplay("Please enter url", 1500, "error");
            $("#blogUrl").focus();
            return false;
        }
        if (datepicker == "" || datepicker == null) {
            messageDisplay("Please enter date", 1500, "error");
            $("#datepicker").focus();
            return false;
        }
        if (description == "" || description == null) {
            messageDisplay("Please enter content", 1500, "error");
            
            return false;
        }
        
        var Data = new FormData();
        Data.append('blogTitle', blogTitle);
        Data.append('blogUrl', blogUrl);
        Data.append('datepicker', datepicker);
        Data.append('description', description);
        Data.append('blogId', blogId);

        for (var i = 0; i < files.length; i++) {
            Data.append('files', files[i]); // we can put more than 1 image file
        }
        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/update-blog',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/blog";

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
    }).on("keyup","#editblogTitle", function () {
        $("#editblogUrl").val(stringSlug($(this).val()));
})
function stringSlug(string){

    string = string.replace(/[/#+)(&^!@$~%,?`*:;{}'".\\=/|]/g,'-');
    string = string.replace(/\s+/g, '-');
    //string = string.replace(/-+$/g,"");
    string = string.replace(/(-){2}/g,"");
    return string;

    }
});
