let loginPage =document.querySelector(".login-page");
let close =document.getElementById("close");
let profilBtn = document.querySelector(".profil-btn");
let content = document.querySelector(".content");
let notificationBtn = document.querySelector(".notification");
let notificationBox = document.querySelector(".notification-box");
let menuItem = document.querySelectorAll(".menu-items");
let basket = document.querySelector(".basket");
let shoppingBtn = document.querySelector(".shopping-btn");

close.addEventListener("click",()=>{
    loginPage.style.display = "none";
});


shoppingBtn.addEventListener("click",()=>{
    basket.classList.toggle("active");
});

profilBtn.addEventListener("click",()=>{
    loginPage.style.display = "flex";
//  notificationBox.style.backgroundColor = "red";
//  notificationBtn.style.color = "red";
});

// notification.addEventListener("click",()=>{
//     notificationBox.style.backgroundColor = "red";
// });
notificationBtn.addEventListener("click",()=>{
    notificationBox.classList.toggle("active");
});

function veiwContent(){

    content.classList.toggle("active");
}



