<script>
  // import Counter from './lib/Counter.svelte'
  import Scrolly from './lib/Scrolly.svelte'
  // import Scatterplot from './lib/Scatterplot.svelte'
  import Linechart from './lib/Linechart.svelte'
  import Chart from "chart.js";
  // import Background from './lib/Background.svelte';
  import Frame from './lib/Frame.svelte';
  import Searchable from './lib/Searchable.svelte';
  let value;

  const introSteps = [
    "<p>this is the intorduction to what's going on</p>",
    "<p>and here is where I'm continuing to talk about it</p>",
    "<p>and then get into the main piece after this</p>"
  ]

  const historySteps = [
    "<p>Ever wonder how we adopted Crisco and margarine over butter and animal fats?</p>",
    "<p>and here is where I'm continuing to talk about it</p>",
    "<p>and then get into the main piece after this</p>"
  ]

  const steps = [
    "<p>All fats are composed of a mixture of saturated, monounsaturated, and polyunsaturated fatty acids.</p>",
    "<p>Consuming seed oils regularly poses several risks to human health because of their fatty acid makeup.</p>",
    "<p>Seed oils are composed of mainly linoleic acid, a <span style='background-color: red;'>PUFA</span>, which is inflammatory and vulnerable to oxidation within the body.</p>",
    "<p>Saturated fats are solid at room temperature, but due to their production process, unsaturated oils are already oxidized prior to consumption and can remain shelf-stable as liquids for lengthy periods of time.<p>",
    "<p>For centuries, humans cooked with animal fats like butter, tallow and lard. Crisco was introduced in 1911 and made of cottonseed oil – a cheap byproduct of industrialized cotton processing.<p>",
    "<p>It's just so digestible!<p>",
    "<p>Industry convinced entire generations that cholesterol free PUFAs were 'heart healthy.' As __ Viet from Cambridge University Press writes, 'Crisco’s marketers made consumer ignorance acceptable by promoting the idea that industrial processing was akin to purification.'<p>"
  ];

  const chartSteps = [
    "<p>We used to consume quite a bit of red meat, which is high in saturated fat. The decline in beef consumption can largely be accounted for by Americans worrying red meat led to heart disease.</p>",
    "<p>So eventually we began to consume more chicken.</p>",
    "<p>Milk consumption has declined consistently since the 1970s, but yogurt and other dairy products have gained popularity, keeping dairy intake steady.</p>",
    "<p>What about eggs? Those are high in cholesterol and must have something to do with it.</p>",
    "<p>Unfortunately, nothing can compare to the increase of one food group: added fats</p>",
    "<p>Today, added fats, oils and dairy fats make up over 35% of daily calories. In 2000, the USDA changed the standard for reporting fats and in 2010, stopped collecting data.</p>"
  ];
</script>

<main>
  <div class="padded">
    <a href="https://usrtk.org/" target="_blank" rel="noreferrer">
      <img src="src/img/usrtk.svg" class="logo" alt="USRTK Logo" />
    </a>
  </div>
  
  <!-- <div id="banner" style="background-image: url(src/img/seedoil-banner_desktop.png)"> -->
    <div id="banner">
    <h1>Big Seed: How vegetable oils became the backbone of the American diet</h1>
  </div>

  <h3 class="byline">
   Posted: April 18, 2023 by <a href='https://datadanica.com' target="_blank">Danica Jefferies</a>
  </h3>

  <!-- <div class="card">
    <Counter />
  </div> -->

  <section>
    <div>
    <p> Here is some intro text.</p>
    <br>
    <p> Here is some intro text.</p>
    <br>
    <p> Here is some intro text.</p>
    <br>
    </div>
    
    </section>
</main>

<!-- Photo gallery -->
<!-- <section class="padded">
      <div class="row">
        <div class="column">
          <img src="src/img/crisco1.jpg" alt="Snow" style="width:100%">
        </div>
        <div class="column">
          <img src="src/img/red.png" alt="Forest" style="width:100%">
        </div>
        <div class="column">
          <img src="src/img/crisco2.jpg" alt="Mountains" style="width:100%">
        </div>
      </div>
</section> -->

<div class="temporary"></div>


<!-- Side by side scroller with scatterplot -->
<section>
  <div class="section-container">
    <div class="steps-container">
      <Scrolly bind:value>
        {#each steps as text, i}
          <div class="step" class:active={value === i}>
            <div class="step-content">{@html text}</div>
          </div>
        {/each}
        <div class="spacer" />
      </Scrolly>
    </div>
    <div class="sticky">
      <!-- <Scatterplot step={value} /> -->
      <!-- <iframe class="mobile-ai2html" src="src/img/ai2html-output/fatty-forms.html" 
    title = "Oil fatty acid composition" style="border: none;" width="100%" height="550px" scrolling="no"></iframe> -->
    <Frame step={value}/>

    </div>
  </div>

</section>

<div class="temporary"></div>



<!-- Text on top scrolly  -->
<!-- <section>
  <div class="section-container-cen">
    <div class="sticky-cen"> -->
      <!-- <p> THIS IS SOME STICKY TEXT</p> -->
      <!-- <div> -->
        <!-- <Background step={value}/> -->
        <!-- <Frame step={value}/>
      </div>
    </div>

    <div class="steps-container-cen">
      <Scrolly bind:value>
        {#each introSteps as text, i}
          <div class="step-cen" class:active={value === i}>
            <div class="step-content-cen">{@html text}</div>
          </div>
        {/each}
        <div class="spacer" />
      </Scrolly>
    </div>
  </div>

</section>

<div class="temporary"></div> -->


<section>
  <div>
    <p> I think this is where the ai2html graphic documenting increased disease rates should go.</p>
  </div>

</section>

<div class="temporary"></div>

<section>
  <div class="section-container">
    <div class="steps-container">
      <Scrolly bind:value>
        {#each chartSteps as text, i}
          <div class="step" class:active={value === i}>
            <div class="step-content-side">{@html text}</div>
          </div>
        {/each}
        <div class="spacer" />
      </Scrolly>
    </div>
    <div class="sticky">
      <Linechart step={value}/>
    </div>
  </div>
</section>

<div class="temporary"></div>

<section>
  <p>INTERACTIVE: SEED OIL CONSUMPTION OF DIFFERENT COUNTRIES</p>
  <div style="background-color :white;">
    <Searchable />
    <select>
      <option value="United States">United States</option>
      <option value="Brazil">Brazil</option>
      <option value="China">China</option>
    </select>
  </div>
  <!-- <select id="countryPicker"> -->
  <!-- <select bind:value={selected}>
    {#each options as value}
    <option {value}>{value}</option>
    {/each}
  </select> -->
</section>

<div class="temporary"></div>



  <style>
    :global(body) {
    overflow-x: hidden;
  }
  
  .header {
    height: 60vh;
    display: flex;
    place-items: center;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }

  .spacer {
    height: 40vh;
  }

  .sticky {
    position: sticky;
    top: 10%;
    flex: 1 1 70%;
    width: 70%;
    height: 100vh;   /*  this is new */
    max-width: 1280px;
  }

  /*  for the centered scroller */
  .section-container-cen {
    /* margin-top: 1em; */
    text-align: center;
    transition: background 100ms;
  }
  
  .steps-container-cen,
  .sticky-cen {
    height: 100%;
    position: sticky;
    justify-content: center;
    top: 5%;
    bottom: 10%;
    margin: auto;
  }

  .step-cen {
    height: 80vh;
    display: flex;
    place-items: center;
    justify-content: center;
  }

  .step-content-cen {
    background: whitesmoke;
    color: #ccc;
    border-radius: 5px;
    padding: 0.5rem 1rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transition: background 500ms ease;
    box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.2);
    z-index: 10;
  }

  .step-cen.active .step-content-cen {
    background: white;
    color: black;
  }




  /* for the side-by-side default scroller */
  .section-container {
    margin-top: 1em;
    text-align: center;
    transition: background 100ms;
    display: flex;
    background-color: whitesmoke;
    padding: 1rem;
  }

  .step {
    height: 80vh;
    display: flex;
    place-items: center;
    justify-content: center;
  }

  .step-content {
    font-size: 1rem;
    background: whitesmoke;
    color: #ccc;
    border-radius: 5px;
    padding: .5rem 1rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transition: background 500ms ease;
    box-shadow: 1px 1px 10px rgba(0, 0, 0, .2);
    text-align: left;
    width: 75%;
    margin: auto;
    max-width: 500px;
  }

  .step-content-side {
    font-size: 1rem;
    background: whitesmoke;
    color: #ccc;
    border-radius: 5px;
    padding: .5rem 1rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transition: background 500ms ease;
    box-shadow: 1px 1px 10px rgba(0, 0, 0, .2);
    text-align: left;
    width: 75%;
    margin: auto;
    max-width: 500px;
  }

  .step.active .step-content {
    background: white;
    color: black;
  }

  .step.active .step-content-side {
    background: white;
    color: black;
  }
  
  .steps-container,
  .sticky {
    height: 100%;
  }

  .steps-container {
    flex: 1 1 40%;
    z-index: 10;
  }

  .row {
    display: flex;
    flex-wrap: wrap;
  }

  .column {
    flex: 29%;
    padding: 2px;
  }

/* Text-on-top on small screens */
  /* @media screen and (max-width: 768px) {
    .section-container {
      flex-direction: column-reverse;
    }
    .sticky {
      width: 95%;
      margin: auto;
    }
  } */

/* Media queries to resize the ai2html graphics for wide versus mobile */
  @media screen and (max-width: 700px) {
    .section-container {
      flex-direction: column-reverse;
    }
    .sticky {
      width: 95%;
      margin: auto;
    }
    /* .column {
      flex: 29%;
  } */
    .row {
      flex-direction: column;
    }
  }

  /*  This was from the Vite package demo */
.logo {
  height: 6em;
  padding: 1em;
  will-change: filter;
  transition: filter 300ms;
}
/* .logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
} */

.temporary {
  height: 400px;
}

  </style>
