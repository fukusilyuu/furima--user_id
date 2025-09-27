const report = () =>{
  const Ten = document.getElementById("ten")
  Ten.addEventListener('click', function() {
    console.log('y')
  });
};
window.addEventListener("turbo:load", report);
window.addEventListener("turbo:render", report);