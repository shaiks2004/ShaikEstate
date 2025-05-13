let dropdown = document.getElementById("dropdown-menu1");
let popbutton = document.getElementById("naver-menu");

popbutton.addEventListener("click", function() {
    dropdown.classList.toggle("show");
});

let naverMenu = document.getElementById("naver-menu");
let dropdownMenu = document.getElementById("dropdown-menu1");

naverMenu.addEventListener("mouseover", function() {
    dropdownMenu.style.display = "block";
    setTimeout(() => {
        dropdownMenu.style.display = "none";
        
    }, 1000*2);
});

// naverMenu.addEventListener("mouseout", function() {
//     dropdownMenu.style.display = "none";
// });
