const price = () => {
  
  const priceInput = document.getElementById("item-price");
  const addTaxDom = document.getElementById("add-tax-price");
  const profitDom = document.getElementById("profit");
  
  if (priceInput) {
    priceInput.addEventListener("input", () => {
      const inputValue = priceInput.value;
  
      const tax = Math.floor(inputValue * 0.1);
      addTaxDom.innerHTML = tax.toLocaleString();
  
      const profit = inputValue - tax;
      profitDom.innerHTML = profit.toLocaleString();
    });
  }
  };
  
  window.addEventListener("turbo:load", price);
  window.addEventListener("turbo:render", price);