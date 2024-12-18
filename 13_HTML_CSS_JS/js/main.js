$(".bar").hide();

$('#burg').on('click', function(){
    $('.bar').slideToggle();
})

document.getElementsByName()

    function myFunction() {
        var userName = document.getElementById("name").value;
        localStorage.setItem("userName",userName);
        var userSurName =  document.getElementById("surname").value;
        localStorage.setItem("userSurName",userSurName);
        var userAge =  document.getElementById("age").value;
        localStorage.setItem("userAge",userAge);
        var userEmail = document.getElementById("email").value; 
        localStorage.setItem("userEmail",userEmail);
        var userComl = document.getElementById("coml").value;
        localStorage.setItem("userComl",userComl);
        
        alert("The form was submitted to localSrorage");
      }