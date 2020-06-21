function validate() {
    var name=document.getElementById('username').value;
    var pass=document.getElementById('password').value;
    if((name.length===0)&&(pass.length===0)){
        document.getElementById('info').innerHTML="* Enter Username and Password";
        return false;
    }else if((name.length===0)&&(pass.length!==0)){
        document.getElementById('info').innerHTML="* Enter Username";
        return false;
    }else if((name.length!==0)&&(pass.length===0)){
        document.getElementById('info').innerHTML="* Enter Password";
        return false;
    }
}
function validateSearch(){
    var bloodgroup=document.getElementById('bloodgroup').value;
    var city=document.getElementById('city').value;
    if((bloodgroup===0)&&(city===0)){
        document.getElementById('error').innerHTML="* Select Blood group and City";
        return false;
    }else if((bloodgroup!==0)&&(city===0)){
        document.getElementById('error').innerHTML="* Select Blood group";
        return false;
    }else if((bloodgroup===0)&&(city!==0)){
        document.getElementById('error').innerHTML="* Select City";
        return false;
    }
    return true;
}
function profile(){
    var name=document.getElementById('name').value;
    if(name.length===0){
        alert("valid username");
        return false;
    }
    return true;
}