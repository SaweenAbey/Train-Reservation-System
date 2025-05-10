nError = document.getElementById('name-error');
eError = document.getElementById('ename-error');
arrivalError = document.getElementById("Atime-error");
departureError = document.getElementById("Dtme-error");
terror = document.getElementById("Ticket-error");

function validateName(){
    var name = document.getElementById('start').value;

    if(name.length == 0){
        nError.style = "color: red;";
        nError.innerHTML = "Name is required";
        return false;
    }
    if(!isNaN(name)){
        nError.style = "color: red;";
        nError.innerHTML = "Name must be a string";
        return false;

    }
    else{
        nError.style = "color: green;";
        nError.innerHTML = "Valid";
        return true;
    }
}
function validateEName(){
    var ename = document.getElementById('end').value;
    if(ename.length == 0){
        eError.style = "color: red;";
        eError.innerHTML = "Name is required";
        return false;
    }
    if(!isNaN(ename)){
        eError.style = "color: red;";
        eError.innerHTML = "Name must be a string";
        return false;

    }
    else{
        eError.style = "color: green;";
        eError.innerHTML = "Valid";
        return true;
    }
}
function validateTimes(){
  var arr = document.getElementById('arrival').value;
  const regex = /^([01]\d|2[0-3]):([0-5]\d)$/;
  if(!regex.test(arr)){
    arrivalError.style = "color: red;";
    arrivalError.innerHTML = "Invalid time format. Use HH:MM (24hrs).";
    return false;
  }
  if(arr.length == 0){
    arrivalError.style = "color: red;";
    arrivalError.innerHTML = "Arrival time is required";
    return false;
  }
  if(arr < 0 || arr > 24){
    arrivalError.style = "color: red;";
    arrivalError.innerHTML = "Arrival time must be between 0 and 24";
    return false;
  }
  else{
    arrivalError.style = "color: green;";
    arrivalError.innerHTML = "Valid";
    return true;
  }
}
function validateDTimes() {
  const time = document.getElementById("departure").value;
  const error = document.getElementById("Dtme-error");
  const regex = /^([01]\d|2[0-3]):([0-5]\d)$/;
  if (!regex.test(time)) {
    error.textContent = "Invalid time format. Use HH:MM (24hrs).";
  } else {
    error.textContent = "";
  }
  if (time.length == 0) {
    error.style = "color: red;";
    error.innerHTML = "Departure time is required";
    return false;
  }
  if (time < 0 || time > 24) {
    error.style = "color: red;";
    error.innerHTML = "Departure time must be between 0 and 24";
    return false;
  } else {
    error.style = "color: green;";
    error.innerHTML = "Valid";
    return true;
  }
}
function validateTicket(){
    var ticket = document.getElementById('price').value;
    if(ticket.length == 0){
        terror.style = "color: red;";
        terror.innerHTML = "Ticket number is required";
        return false;
    }
    if(isNaN(ticket)){
        terror.style = "color: red;";
        terror.innerHTML = "Ticket number must be a number";
        return false;
    }
    if(ticket <= 25){
        terror.style = "color: red;";
        terror.innerHTML = "Ticket number must be greater than or equal 25";
    }
    else{
        terror.style = "color: green;";
        terror.innerHTML = "Valid";
        return true;
    }
}



