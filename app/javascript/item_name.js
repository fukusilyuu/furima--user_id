document.addEventListener("turbo:load", () => {
  const ItemNameInput = document.querySelector("#item_name")
  if (ItemNameInput){
    const inputElement = document.getElementById("item_name");
    inputElement.addEventListener('input', () => {
      const keyword = document.getElementById("item_name").value;
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/items/search/?keyword=${keyword}`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        const searchResult = document.getElementById("search-result");
        searchResult.innerHTML = "";
        if (XHR.response) {
          const itemName = XHR.response.keyword;
          itemName.forEach((item_name) => {
            const childElement = document.createElement("div");
            childElement.setAttribute("class", "child");
            childElement.setAttribute("id", item.name);
            childElement.innerHTML = item.item_name;
            searchResult.appendChild(childElement);
            const clickElement = document.getElementById(item_name);
            clickElement.addEventListener("click", () => {
              document.getElementById("item_name").value = clickElement.textContent;
              console.log("y")
              clickElement.remove();
            });
          });
        };
      };
    });
  };
});