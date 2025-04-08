const mobileMenu = document.getElementById('mobile-menu');
const nav = document.querySelector('nav ul');

mobileMenu.addEventListener('click', () => {
    nav.classList.toggle('active');
});