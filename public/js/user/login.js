$(document).ready(function(){

    var loginPasswordElement= $("#password");

    loginPasswordElement.on("keypress",function(e){
        if(e.keyCode == 13 || e.which == 13){
            login();
        }
    });

    $("body").on("click","#login-btn",function(){
        login();
    });
});
function login(){

    var emailElement= $("#email");
    var email = emailElement.val();
    var passwordElement= $("#password");
    var password = passwordElement.val();
 
    if(email === ""){
        messageDisplay("please enter email",2000);
        emailElement.focus();
        return false;
    }
    if(password === ""){
        messageDisplay("Enter your password",2000);
        passwordElement.focus();
        return false;
    }
    

    $.post(BASE_URL+"/login",{
        email: email,
        password : password

    },
    
  function(response){
            console.log(response);
            if(response.success){
                    messageDisplay(response.message,2000,"success");
                    
                    setTimeout(function(){                        
                        window.location.href = BASE_URL+"/admin/admin-home";
                        
                    },2000)
                
            }
            else{
                messageDisplay(response.message,2000,"error");

            }
        });

}
function parseJsonData(data) {
    return $.parseJSON(JSON.stringify(data));
}
