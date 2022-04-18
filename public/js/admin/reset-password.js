$(document).ready(function () {
$("body").on("click","#Y2hhbmdlUGFzc3dvcmRTdWJta",function(){

        var newPasswordElement  = $("#bmV3UGFzc3dvcmQ");
        var confirmPasswordElement = $("#Y29uZmlybVBhc3N3b3Jk");
        

        var password = $.trim(newPasswordElement.val());
        if (password === "") {
            messageDisplay("Please enter Password", 2000);
            return false;
        }

        if (password.length < 5) {
            messageDisplay("Password must be 6 characters", 2000);
            return false;
        }

        var confirmPassword = $.trim(confirmPasswordElement.val());
        if (confirmPassword === "") {
            messageDisplay("Please enter confirm password", 2000);
            return false;
        }

        if (confirmPassword.length < 5){
            messageDisplay("Password must be 6 characters", 2000);
            return false;
        }

        if (password !== confirmPassword){
            messageDisplay("Password Fields doesn't match", 2000);
            return false;
        }


//        var userId= localStorage.getItem("ZG9jdW1lbnRzQXBw_user_id");


//        if(!userId){
//            messageDisplay("Something went wrong Please try again after some time..",2000);
//            return false;
//        }

        $("#Y2hhbmdlUGFzc3dvcmRTdWJtaXQ").attr("disabled","disabled");

        $.post(BASE_URL+"/admin/change-password",{new_password : password,confirm_password:confirmPassword},function(response){

            if(response.success){
                
                messageDisplay(response.message,2000,"success");


                setTimeout(()=>{

                    window.location.href = BASE_URL+"/login";

                },2000);


            }else{

                messageDisplay(response.message,2000,"error");
                return false;
            }

        }).then(() =>{

            $("#Y2hhbmdlUGFzc3dvcmRTdWJtaXQ").removeAttr("disabled");

        });


    });
});
