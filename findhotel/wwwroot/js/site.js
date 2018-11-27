// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

var modal = document.getElementById('myModal');
var span = document.getElementsByClassName("close")[0];
var image = document.createElement("img");
var imageParent = document.getElementById("roompicture");

var lastRoomId;

function popup(name, description, price, roomimage, roomId) {
    modal.style.display = "block";
    document.getElementById("name").innerHTML = name;
    document.getElementById("description").innerHTML = description;
    document.getElementById("price").innerHTML = price + "€ per day";
    if (image.firstChild == null) {
        image.id = "roompic";
        image.src = "/images/rooms/" + roomimage;
        imageParent.appendChild(image);
    }
    lastRoomId = roomId;
}

span.onclick = function () {
    modal.style.display = "none";
}

window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function redirect() {
    $(location).attr('href', 'Reservation?id=' + lastRoomId);
}

function validateForm() {
    var name = document.getElementById("name").value;
    var surname = document.getElementById("surname").value;
    var email = document.getElementById("email").value;
    var datefrom = document.getElementById("datefrom").value;
    var dateto = document.getElementById("dateto").value;

    if (name.trim() == "" || surname.trim() == "" || email.trim() == "" || datefrom.trim() == "" || dateto.trim() == "") {
        alert("Enter all the informations.");
        return false;
    }
    else {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        var respond = re.test(String(email).toLowerCase());
        if (!respond) {
            alert("Wrong email address!");
            return false;
        }
    }
}