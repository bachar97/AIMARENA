function checkinput (input){
    console.log(input);
    if (input.length > 0){
    document.getElementById("send").disabled = false;
    }else{
    document.getElementById("send").disabled = true;
    }
}

if (document.getElementById("chat").length > 0){
    document.getElementById("send").disabled = false;
    }else{
    document.getElementById("send").disabled = true;
}