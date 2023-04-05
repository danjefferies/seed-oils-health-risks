<script>

  import Chart from "chart.js";
  // import { blank_object } from "svelte/internal";

  const labels = ['2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019']

  // const countries = ['United States', 'Brazil', 'China']

  const data = {
    labels: labels,
    datasets: [
      {
      label: "United States",
      data:[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      fill: false,
      borderColor: 'rgb(105, 105, 105)',
      tension: 0.1
      },
      {
      label: "China",
      data:[6, 5, 4, 3, 2, 1, 1, 7, 8, 9],
      fill: false,
      borderColor: 'rgb(105, 105, 105)',
      tension: 0.1
      },
      {
      label: "Brazil",
      data:[0, 1, 2, 3, 5, 6, 9, 4, 3, 2],
      fill: false,
      borderColor: 'rgb(105, 105, 105)',
      tension: 0.1
      },
  ]
  };



  var config = {
      type: "line",
      data: data,
    };

    function makeChart(ctx){     
        const myChart = new Chart(ctx, config); //init the chart
        return {
            update(){
              // error check to prevent graph from breaking when updating
              if (data != undefined){
                myChart.data.datasets = data;
                myChart.update()
              }
            },
            destroy(){ myChart.destroy();   }               
        }
    }

    // const countryPicker = document.getElementById("countryPicker");
    // countryPicker.addEventListener('change', filterChart);

    // function filterChart(){
    //   console.log(countryPicker.value);
    // }


</script>

<div>
  <div>
    <canvas use:makeChart id="countryPicker"></canvas>
  </div>
</div>