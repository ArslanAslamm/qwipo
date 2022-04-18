$(document).ready(function () {
    tinymce.init(
    {
    selector: '#address',
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
    var regexemail = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var regexmobile = /^([0|\+[0-9]{1,5})?([6-9][0-9]{9})$/;
     
    $("body").on("click", "#addAddress", function () {

        var mobile = $.trim($("#mobile").val());
        var whatAppNumber = $.trim($("#whatAppNumber").val());
        var email = $.trim($("#email").val());
        var address =$.trim(tinymce.get('address').getContent()); 
        
        if (mobile == "" || mobile == null) {
            messageDisplay("Please enter mobile", 1500, "error");
            $("#mobile").focus();
            return false;
        }
        if (!regexmobile.test(mobile)) {
             messageDisplay("Please enter valid mobile number",1500,"error");         
            return false;
        }
        if (whatAppNumber == "" || whatAppNumber == null) {
            messageDisplay("Please enter whatapp number ", 1500, "error");
            $("#whatAppNumber").focus();
            return false;
        }
        if (!regexmobile.test(whatAppNumber)) {
             messageDisplay("Please enter valid whatapp number",1500,"error");         
            return false;
        }
         if (email == "" || email == null) {
            messageDisplay("Please enter email ", 1500, "error");
            $("#email").focus();
            return false;
        }
        if (!regexemail.test(email)) {
             messageDisplay("Please enter valid email",1500,"error");         
            return false;
        }
         if (address == "" || address == null) {
            messageDisplay("Please enter address", 1500, "error");
            $("#address").focus();
            return false;
        }
        
        var Data = new FormData();
        Data.append('mobile', mobile);
        Data.append('whatAppNumber', whatAppNumber);
        Data.append('email', email);
        Data.append('address', address);
        
        $(".submit-btn").attr("disabled", "disabled");
        $.ajax({
            url: BASE_URL + '/admin/add-address',
            type: 'post',
            data: Data,

            contentType: false,
            processData: false,
            success: function (response) {
                if (response.success) {
                    messageDisplay(response.message, 2000, "success");
                    $(".submit-btn").removeAttr("disabled");
                    setTimeout(function () {
                        window.location.href = BASE_URL + "/admin/contact";

                    }, 2000)

                } else {
                    messageDisplay(response.message, 2000, "error");
                    $(".submit-btn").removeAttr("disabled");
                }
            }
        });
    })
});
