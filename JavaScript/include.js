// Load Header
fetch("../components/header.php")
  .then(response => response.text())
  .then(data => document.getElementById("header").innerHTML = data);

// Load Footer
fetch("../components/footer.php")
  .then(response => response.text())
  .then(data => document.getElementById("footer").innerHTML = data);
