var oneDay = 24 * 60 * 60 * 1000;
var endDate = new Date(document.getElementById("booking_end_date").value);
var startDate = new Date(document.getElementById("booking_start_date").value);
var setDate = 0;
var pageDate = document.querySelector(".listing-view__total-price");
var price = parseInt(getSecondPart(document.querySelector("#price").innerHTML));

document
  .getElementById("booking_end_date")
  .addEventListener("change", function() {
    let input = this.value;
    endDate = new Date(input);
    diffDays();
  });

document
  .getElementById("booking_start_date")
  .addEventListener("change", function() {
    let input = this.value;
    startDate = new Date(input);
    diffDays();
  });

diffDays = () => {
  setDate = Math.round(
    Math.abs((endDate.getTime() - startDate.getTime()) / oneDay)
  );
  pageDate.innerHTML = setDate * price;
};

diffDays();

// function you can use:
function getSecondPart(str) {
  return str.split("$")[1];
}
