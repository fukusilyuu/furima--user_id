window.addEventListener('load', function(){
  const Categorys = document.getElementById('categorys')
  const Categoryslists = document.getElementById('lists')
  const Categoryslist = document.querySelector('list')
  const Categorysprice = document.getElementById('price')
  const del = document.getElementById("category-del");

  Categoryslists.style.display = 'none';
  Categorys.addEventListener('click', function() {
    del.removeAttribute("style");
    if (Categoryslists.getAttribute("style") == "display:block;") {
      Categoryslists.setAttribute("style");
    } else {
      Categoryslists.setAttribute("style", "display:block;");
    };
     // cre
  });
 
  
});