const price = () => {

  window.addEventListener('turbo:load', () => {
    console.log("OK");
  });
  
  const priceInput = document.getElementById("item-price"); // 入力された価格を取得する
  const addTaxDom = document.getElementById("add-tax-price"); // 販売手数料を表示する要素を取得する
  const profitDom = document.getElementById("profit"); // 販売利益を表示する要素を取得する
  
  if (priceInput) {
    priceInput.addEventListener("input", () => {
      const inputValue = priceInput.value;
      console.log(inputValue); // 入力値をコンソールに表示
  
      const tax = Math.floor(inputValue * 0.1); // 販売手数料（10%）を計算し、小数点以下を切り捨て
      addTaxDom.innerHTML = tax.toLocaleString(); // 販売手数料を表示（カンマ区切り）
  
      const profit = inputValue - tax; // 販売利益を計算（価格 - 販売手数料）
      profitDom.innerHTML = profit.toLocaleString(); // 販売利益を表示（カンマ区切り）
    });
  }
  };
  
  window.addEventListener("turbo:load", price);
  window.addEventListener("turbo:render", price);