const star = () => {
  const Star = document.getElementById("star")
  const StarCounts = document.getElementById("star-counts");
  Star.addEventListener('click', () => {
    StarCounts.innerHTML = Math.floor( + 1);
  });
};
window.addEventListener("turbo:load", star);
window.addEventListener("turbo:render", star);