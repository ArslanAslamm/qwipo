var emailExpr = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

var mobileExpr = /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[6789]\d{9}$/;

function messageDisplay(message, timeOut, type) {

    type = $.trim(type);
    if (type == "") {
        type = "error";
    }

    if ($.trim(timeOut) == "") {
        timeOut = 1500;
    }

    var element = $("#wTdOl5MnWz");
    var color = "#e74a3b";
    if (type == "success") {
        color = "#4caf50";
    } else if (type == "error") {
        color = "#e74a3b";
    }
    element.attr("style", "background-color:" + color);
    $("div#wTdOl5MnWz span").html(message);
    element.animate({
        height: 70
    }, 300).show();

    if (timeOut != -1) {
        setTimeout(function () {
            element.animate({
                height: 0
            }, 300, function () {
                element.hide();
            });
        }, timeOut);
    }
    function stringSlug(string){

string = string.replace(/[/#+)(&^!@$~%,?`*:;{}'".\\=/|]/g,'-');
string = string.replace(/\s+/g, '-');
//string = string.replace(/-+$/g,"");
string = string.replace(/(-){2}/g,"");
return string;

}

}