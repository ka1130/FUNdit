document.addEventListener("DOMContentLoaded", () => {
  const toggleDots = document.getElementById("toggle-dots");
  const overlay = document.getElementById("overlay");
  toggleDots.addEventListener("click", (e) => {
    console.log(e.target);
    toggleDots.classList.toggle("active");
    overlay.classList.toggle("open");
  }, false);

  // hide menu on ESC keyboard hit
  document.addEventListener("keydown", e => {
    toggleDots.classList.remove("active");
    overlay.classList.remove("open");
  }, false);
}, false);