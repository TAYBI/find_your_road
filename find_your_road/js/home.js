var ul = document.querySelector(".hidden");
var img = document.querySelector(".img");
//ul.className = "visible";
//img.addEventListener("click", function(event){
//   var isClickInside = specifiedElement.contains(event.target);
//   if (!isClickInside) {
//     ul.className = "hidden";
//     //the click was outside the specifiedElement, do something
//   }
//});
//img.addEventListener("", function () { } (ul.className = "hidden"));

//// ul.addEventListener("mouseover", () => (ul.className = "visible"));
//// ul.addEventListener("mouseout", () => (ul.className = "hidden"));


////img.addEventListener("click", function (event) {
////    ul.classList.toggle("show");
////});

// Close the dropdown if the user clicks outside of it
window.onclick = function (event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('visible')) {
                openDropdown.classList.remove('visible');
            }
        }
    }
}