// set the dimensions and margins of the graph
var margin = {top: 10, right: 30, bottom: 30, left: 60},
    width = 460 - margin.left - margin.right,
    height = 400 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg = d3.select("#country-consumption-chart")
  .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform",
          "translate(" + margin.left + "," + margin.top + ")");

//Read the data
d3.csv("src/data/fao-oils-global.csv", function(data) {

        // List of countries to group the dropdown by
        var countryGroup = d3.map(data, function(d){return(d.country)}).keys()

        // Populate the dropdown 
        d3.select("#selectButton")
            .selectAll('myOptions')
                .data(countryGroup)
            .enter()
            .append('option')
            .text(function (d) { return d; }) // text showed in the menu
            .attr("value", function (d) { return d; }) // corresponding value returned by the button



  // group the data: one array for each value of the X axis.
  var sumstat = d3.nest()
    .key(function(d) { return d.year;})
    .entries(data);

  // Stack the data: each group will be represented on top of each other
  var oilGroups = ["Soybean", "Peanut", "Sunflower", "Cottonseed", "Palm kernel", "Palm", "Coconut", "Sesame", "Olive", "Ricebran", "Corn", "Other oils"] // list of group names
  var oilGroup = [1,2,3,4,5,6,7,8,9,10,11,12] // list of group names
  var stackedData = d3.stack()
    .keys(oilGroup)
    .value(function(d, key){
      return d.values[key].value
    })
    (sumstat)

  // Add X axis --> it is a date format
  var x = d3.scaleLinear()
    .domain(d3.extent(data, function(d) { return d.year; }))
    .range([ 0, width ]);
  svg.append("g")
    .attr("transform", "translate(0," + height + ")")
    .call(d3.axisBottom(x).ticks(5));

  // Add Y axis
  var y = d3.scaleLinear()
    .domain([0, d3.max(data, function(d) { return +d.value; })*1.2])
    .range([ height, 0 ]);
  svg.append("g")
    .call(d3.axisLeft(y));

  // color palette
  var color = d3.scaleOrdinal()
    .domain(oilGroups)
    .range(['#e41a1c','#377eb8','#4daf4a','#984ea3','#ff7f00','#ffff33','#a65628','#f781bf','#999999'])

  // Initialize the area chart with the first group of the list
    svg
    .selectAll("mylayers")
    .data(stackedData)
    .enter()
    .append("path")
    .style("fill", function(d) { name = oilGroups[d.key-1] ; return color(name); })
    .attr("d", d3.area()
        .x(function(d, i) { return x(d.data.key); })
        .y0(function(d) { return y(d[0]); })
        .y1(function(d) { return y(d[1]); })
    )



// A function to update the chart based on the dropdown
function update(selectedCountry) {

    // Create new data with the selection?
    console.log(data)
    var dataFilter = data.filter(function(d){
      console.log(d)
      return d.country==selectedCountry})
    console.log(dataFilter)

    // Give these new data to update the chart
    svg
        .datum(dataFilter)
        .transition()
        .duration(1000)
        .attr("d", d3.area()
        .x(function(d, i) { return x(d.data.key); })
        .y0(function(d) { return y(d[0]); })
        .y1(function(d) { return y(d[1]); })
    )
        .style("fill", function(d) { name = oilGroups[d.key-1] ;  return color(name); })
    }

    // When the button is changed, run the updateChart function
    d3.select("#selectButton").on("change", function(d) {
        // recover the option that has been chosen
        var selectedOption = d3.select(this).property("value")
        // run the updateChart function with this selected option
        update(selectedOption)
    })
})