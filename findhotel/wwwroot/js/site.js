// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

var modal = document.getElementById('myModal');
var span = document.getElementsByClassName("close")[0];
var image = document.createElement("img");
var imageParent = document.getElementById("roompicture");

function popup(name, description, price, roomimage) {
    modal.style.display = "block";
    document.getElementById("name").innerHTML = name;
    document.getElementById("description").innerHTML = description;
    document.getElementById("price").innerHTML = price + "€ per day";
    if (image.firstChild == null) {
        image.id = "roompic";
        image.src = "/images/rooms/" + roomimage;
        imageParent.appendChild(image);
    }
}

span.onclick = function () {
    modal.style.display = "none";
}

window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}