<script>
  export let step;

    // library that creates chart objects in page
    import Chart from "chart.js";
    import { blank_object } from "svelte/internal";

    // setup datasets to be passed in 
    let chartData = [];
    let allData = [
            {
              label: "",
              fill: false,
              backgroundColor: "transparent",
              borderColor: "transparent",
              data: [0,0,0,0,0],
            },
            {label: "",
              fill: false,
              backgroundColor: "transparent",
              borderColor: "transparent",
              data: [600, 600, 600, 600],
            },
            {
              label: "Beef",
              fill: false,
              backgroundColor: "#0B5FA5",
              borderColor: "#0B5FA5",
              data: [219.6,217.8,221.3,208.9,222.1,228.7,244.2,237.5,226.1,202.2,198.2,200.2,199.4,203.7,203.1,205.1,204.5,191.3,188.6,179.2,175.8,173.0,171.7,167.8,173.0,174.8,176.1,172.3,174.8,177.0,177.6,173.6,177.5,170.4,173.3,171.8,172.7,170.9,163.3,159.8,155.9],
            },
            {
              label: "Pork",
              fill: false,
              backgroundColor: "#FF4B00",
              borderColor: "#FF4B00",
              data: [96.7,105.6,95.9,86.1,93.7,76.7,81.1,84.3,84.4,96.8,103.9,99.6,89.5,94.6,94.2,95.1,90.1,90.9,97.3,96.5,92.5,93.3,98.0,96.7,97.7,96.5,90.2,89.2,96.2,98.3,95.2,93.8,96.1,96.7,95.6,92.8,91.7,94.2,91.6,92.8,88.5],
            },
            {
              label: "Chicken",
              fill: false,
              backgroundColor: "#B8C46B",
              borderColor: "#B8C46B",
              data: [64.7,64.6,66.9,63.9,63.7,62.4,67.3,68.5,71.7,77.5,77.2,79.6,80.0,80.4,83.3,85.9,87.8,93.0,93.4,95.6,100.3,104.3,109.9,113.7,115.1,113.8,114.8,118.1,119.1,126.5,128.1,127.6,134.2,136.0,140.1,143.0,143.8,141.5,138.7,132.4,137.0],
            },
            {
              label: "Dairy",
              fill: false,
              backgroundColor: "#D773D3",
              borderColor: "#D773D3",
              data: [250,251,249,247,241,240,241,240,239,237,233,231,234,238,242,246,247,249,245,241,241,241,241,237,240,239,237,236,235,238,237,236,237,237,238,238,237,237,234,237,235],
            },
            {
              label: "Eggs",
              fill: false,
              backgroundColor: "#FDC64B",
              borderColor: "#FDC64B",
              data: [48.3,48.5,47.4,45.1,44.3,43.2,42.3,41.9,42.6,43.4,42.5,41.5,41.5,40.9,40.9,40.1,39.9,39.9,38.8,37.3,36.9,36.7,36.8,36.8,37.0,36.6,36.7,36.9,38.3,39.8,39.4,39.5,39.9,40.5,40.2,39.6,39.7,38.8,37.8,38.0,37.9],
            },
            {
              label: "Added fats, oils, dairy fats",
              fill: false,
              backgroundColor: "#c90000",
              borderColor: "#c90000",
              borderWidth: 6,
              data: [346,342,353,357,349,351,367,353,364,372,372,370,372,387,402,424,431,427,433,413,411,419,433,453,443,434,424,427,425,444,537,548,577,575,573,573,571,584,594,551,575]
            },
            {label: "Beef",
              fill: false,
              backgroundColor: "#B0A79F",
              borderColor: "#B0A79F",
              data: [219.6,217.8,221.3,208.9,222.1,228.7,244.2,237.5,226.1,202.2,198.2,200.2,199.4,203.7,203.1,205.1,204.5,191.3,188.6,179.2,175.8,173.0,171.7,167.8,173.0,174.8,176.1,172.3,174.8,177.0,177.6,173.6,177.5,170.4,173.3,171.8,172.7,170.9,163.3,159.8,155.9],
            },
            {
              label: "Pork",
              fill: false,
              backgroundColor: "#B0A79F",
              borderColor: "#B0A79F",
              data: [96.7,105.6,95.9,86.1,93.7,76.7,81.1,84.3,84.4,96.8,103.9,99.6,89.5,94.6,94.2,95.1,90.1,90.9,97.3,96.5,92.5,93.3,98.0,96.7,97.7,96.5,90.2,89.2,96.2,98.3,95.2,93.8,96.1,96.7,95.6,92.8,91.7,94.2,91.6,92.8,88.5],
            },
            {
              label: "Chicken",
              fill: false,
              backgroundColor: "#B0A79F",
              borderColor: "#B0A79F",
              data: [64.7,64.6,66.9,63.9,63.7,62.4,67.3,68.5,71.7,77.5,77.2,79.6,80.0,80.4,83.3,85.9,87.8,93.0,93.4,95.6,100.3,104.3,109.9,113.7,115.1,113.8,114.8,118.1,119.1,126.5,128.1,127.6,134.2,136.0,140.1,143.0,143.8,141.5,138.7,132.4,137.0],
            },
            {
              label: "Dairy",
              fill: false,
              backgroundColor: "#B0A79F",
              borderColor: "#B0A79F",
              data: [250,251,249,247,241,240,241,240,239,237,233,231,234,238,242,246,247,249,245,241,241,241,241,237,240,239,237,236,235,238,237,236,237,237,238,238,237,237,234,237,235],
            },
            {
              label: "Eggs",
              fill: false,
              backgroundColor: "#B0A79F",
              borderColor: "#B0A79F",
              data: [48.3,48.5,47.4,45.1,44.3,43.2,42.3,41.9,42.6,43.4,42.5,41.5,41.5,40.9,40.9,40.1,39.9,39.9,38.8,37.3,36.9,36.7,36.8,36.8,37.0,36.6,36.7,36.9,38.3,39.8,39.4,39.5,39.9,40.5,40.2,39.6,39.7,38.8,37.8,38.0,37.9],
            },
          ];

    function changeData(s){
      if (s != undefined) {
        switch(s){
          case 0:
            return allData.slice(0,4);
          case 1:
            return allData.slice(0,5);
          case 2:
            return allData.slice(0,6);
          case 3:
            return allData.slice(0,7);
          case 4:
            return allData.slice(7,13);
          case 5:
            return allData.slice(7,13);
          case 6:
            return allData.slice(7,13);
        }
      }
        return allData.slice(7,13);
    }

    $: chartData = changeData(step)
  
    var config = {
      type: "line",
      data: {
        labels: ["1970","'71","'72","'73","'74","'75","'76","'77","'78","'79","1980","'81","'82","'83","'84","'85","'86","'87","'88","'89","1990","'91","'92","'93","'94","'95","'96","'97","'98","'99","2000","'01","'02","'03","'04","'05","'06","'07","'08","'09","2010"],

        datasets: chartData
      },
      options: {
        maintainAspectRatio: false,
        responsive: true,
        title: {
          display: true,
          text: "Annual daily average dietary fat consumption",
          fontColor: "black"
        },
        elements: {
          point:{
            radius: 0
            }
        },
        legend: {
          labels: {
            fontColor: "black",
          },
          align: "end",
          position: "bottom",
        },
        tooltips: {
          mode: "index",
          intersect: false,
        },
        hover: {
          mode: "nearest",
          intersect: true,
        },
        scales: {
          xAxes: [
            {
              ticks: {
                fontColor: "rgba(105,105,105, 105)",
                autoSkip: true,
                autoSkipPadding: 2,
              },
              display: true,
              scaleLabel: {
                display: false,
                labelString: "Year",
                fontColor: "black"
              },
              gridLines: {
                display: false,
                drawBorder: false,
                borderDash: [2],
                borderDashOffset: [2],
                // color: "rgba(0, 0, 0, 0)",
                // zeroLineColor: "rgba(105,105,105, 105)",
                // zeroLineBorderDash: [2],
                // zeroLineBorderDashOffset: [2],
              },
            },
          ],
          yAxes: [
            {
              ticks: {
                fontColor: "black",
              },
              display: true,
              scaleLabel: {
                display: true,
                labelString: "Calories",
                fontColor: "black",
              },
              gridLines: {
                display: true,
                borderDash: [3],
                borderDashOffset: [3],
                drawBorder: false,
                // color: "rgba(0, 0, 0, 0)",
                // // zeroLineColor: "rgba(33, 37, 41, 0)",
                // zeroLineColor: "rgba(0, 0, 0)",
                // zeroLineBorderDash: [2],
                // zeroLineBorderDashOffset: [2],
              },
            },
          ],
        },
      },
    };

    // init chart
    function makeChart(ctx){     
        const myChart = new Chart(ctx, config); //init the chart
        chartData = allData;
        return {
            update(){
              // error check to prevent graph from breaking when updating
              if (chartData != undefined){
                myChart.data.datasets = chartData;
                myChart.update()
              }
            },
            destroy(){ myChart.destroy();   }               
        }
    }
  </script>
  
  <div>
    <div class="p-4 flex-auto">
      <!-- Chart -->
      <div>
        <canvas use:makeChart={step} id="line-chart"></canvas>
      </div>
    </div>
  </div>