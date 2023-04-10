function showImage(value) {
    let dropdown = document.getElementById("dropdown-charts");
    let currentCountry = value;
    // handle removing last child
    if (dropdown.children.length > 1){
      dropdown.lastChild.remove();
    }
    // handle returning to "Select a country"
    if (currentCountry === "NULL"){
      return;
    }
    let currSource = `img/${currentCountry}.svg`;
    var newChart = document.createElement('img');
    newChart.setAttribute('src', currSource)
    newChart.setAttribute('style', "height: 75vh; width: 40%;")
    dropdown.appendChild(newChart);

}