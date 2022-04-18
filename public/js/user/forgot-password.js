$(document).ready(function() {

    $("body").on("click","#Zm9yZ290UGFzc3dvcmRTdWJtaXQ",function(){

        $("#verifyOtpDiv").addClass("d-none");

        var userNameElement = $("#Zm9yZ290RW1haWxNb2JpbGU");
        var userName = userNameElement.val();
//        console.log("trigger");
//        console.log(userName);return false;
        if(userName === ""){
            messageDisplay("Please enter email",2000);
            return false;
        }
        $("#dmVyaWZ5b3Rwc3VibWl0").attr("data-id","0");

        $("#Zm9yZ290UGFzc3dvcmRTdWJtaXQ").attr("disabled","disabled");

        $.post(BASE_URL+"/user/forgot-password",{username : userName},function(response){

            if(response.success){

                console.log("response in forgot password",response);
                $("#dmVyaWZ5b3Rwc3VibWl0").attr("data-id",response.user_id);
                messageDisplay(response.message,2000,"success");
                $("#forgotPasswordDiv").addClass("d-none");
                $("#verifyOtpDiv").removeClass("d-none");

            }else{

                messageDisplay(response.message,2000);
                return false;
            }

        }).then(function(){

            $("#Zm9yZ290UGFzc3dvcmRTdWJtaXQ").removeAttr("disabled");
        });

    }).on("click","#dmVyaWZ5b3Rwc3VibWl0",function(){
       
        var otpElement = $("#verifyOtp");

        var userId = $("#dmVyaWZ5b3Rwc3VibWl0").attr("data-id");
        var otp = $.trim(otpElement.val());
       
        if(otp === ""){          
            messageDisplay("Please enter 6 digit otp",2000);
            return false;
        }
         
        

        $("#dmVyaWZ5b3Rwc3VibWl0").attr("disabled","disabled");

        $.post(BASE_URL+"/user/verify-otp",{otp : otp,"user_id":userId},function(response){

            if(response.success){

                console.log("resoponse in otp",response);

                localStorage.clear();
                localStorage.setItem("ZG9jdW1lbnRzQXBw_user_id",response.user_id);

                messageDisplay(response.message,2000,"success");


                setTimeout(()=>{

                    window.location.href = BASE_URL+"/user/reset-password";
                  //  $("#forgotPasswordDiv").removeClass("d-none");
                 //   $("#verifyOtpDiv").removeClass("d-block");

                },1700);

            }else{               
                messageDisplay(response.message,2000,"error");
                return false;
            }

        }).then(function(){

            $("#dmVyaWZ5b3Rwc3VibWl0").removeAttr("disabled");

        });
    }).on("click","#Y2hhbmdlUGFzc3dvcmRTdWJtaXQ",function(){


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


        var userId= localStorage.getItem("ZG9jdW1lbnRzQXBw_user_id");


        if(!userId){
            messageDisplay("Something went wrong Please try again after some time..",2000);
            return false;
        }

        $("#Y2hhbmdlUGFzc3dvcmRTdWJtaXQ").attr("disabled","disabled");

        $.post(BASE_URL+"/user/change-password",{new_password : password,confirm_password:confirmPassword,user_id:userId},function(response){

            if(response.success){
                
                messageDisplay(response.message,2000,"success");


                setTimeout(()=>{

                    window.location.href = BASE_URL+"/user/login";

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