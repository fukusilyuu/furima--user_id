document.addEventListener("turbo:load", () => {
  const Categorys = document.getElementById('categorys')
  const Categoryslists = document.getElementById('lists')
  const Categoryslist = document.querySelector('list')
  const Categorysprice = document.getElementById('price')
  Categorys.addEventListener('click', function() {
    if (Categoryslist.getAttribute("style") == "display:block;") {
      Categoryslist.removeAttribute("style", "display:block;")
    } else {
      Categoryslist.setAttribute("style")
    }
  })
  Categoryslist.addEventListener('input', function() {
    Categoryslist.remove();
    return null;
  })
  Categorysprice.addEventListener('input', function() {
    Categorysprice.remove();
    return null;
  })
  
});