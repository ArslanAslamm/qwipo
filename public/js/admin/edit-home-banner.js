$(document).ready(function () {  
 var acceptedImageExtensions = ["png","jpg","jpeg","svg"];
 $("body").on("click", "#edit_home_banner", function () {        

        var editBannerTitle = $.trim($("#edit_home_bannner_title").val());
        var editBannnerSubTitle = $.trim($("#edit_home_bannner_sub_title").val());
        var homeBannerId = $(this).attr("data-id");
        
        var image_name = $("#file").val();
        var files = $('#file')[0].files; 

        if (editBannerTitle == "" || editBannerTitle == null) {
            messageDisplay("Please enter title",1500,"error");
            $("#edit_home_bannner_title").focus();
            return false;
        }
         if (editBannnerSubTitle == "" || editBannnerSubTitle == null) {
             messageDisplay("Please enter sub title",1500,"error");         
          $("#edit_home_bannner_sub_title").focus();  
         return false;
        }
          
            var Data = new FormData();         
            Data.append('homeBannerId', homeBannerId);
            Data.append('editBannerTitle', editBannerTitle);
            Data.append('editBannnerSubTitle', editBannnerSubTitle);
           
            
            for(var i = 0;i<files.length;i++){
                   Data.append('files', files[i]); // we can put more than 1 image file
               }
        $(".submit-btn").attr("disabled","disabled");  
        $.ajax({
                url: BASE_URL + '/admin/update-home-banner',
                type: 'post',
                data:Data,
            
                contentType: false,
                processData: false,
                success: function(response){           
            if(response.success){
                    messageDisplay(response.message,2000,"success");
                     $(".submit-btn").removeAttr("disabled");
                    setTimeout(function(){
                        window.location.href = BASE_URL+"/admin/admin-home";
                        
                    },2000)
                
            }
            else{
                messageDisplay(response.message,2000,"error");
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
    var Extension =filename.split('.').pop();
    if ($.inArray(Extension, acceptedImageExtensions) === -1) {
    messageDisplay("Invalid File",1500,"error");
     $("#file").val('');
    return false;
    }    
    $("#feature_img").attr("src",e.target.result); 
    };
    reader.readAsDataURL(file);
    });
    $("#feature_img").removeClass("d-none");
    }
    else{
       $("#feature_img").addClass("d-none");

    }
    })
});
