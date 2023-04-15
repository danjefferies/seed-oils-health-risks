<script>
  import Scrolly from './lib/Scrolly.svelte'
  import Linechart from './lib/Linechart.svelte'
  import Chart from "chart.js";
  import Frame from './lib/Frame.svelte';
  import Card from './flipcards/Card.svelte';
  import Card2 from './flipcards/Card2.svelte';
  import Card3 from './flipcards/Card3.svelte';
  import Card4 from './flipcards/Card4.svelte';
  let value;

  const steps = [
    "<p>Introducing ultra-processed food’s best friend: oils made from the seeds of plants, rather than the fruits.</p>",
    "<p>These oilseeds are processed harshly, by dowsing them in a hexane bath before heating and crushing them to extract the oil. Because oilseeds are not resistant to high temperatures, this mere procedure alters the fatty acid bonds and creates trans fats.</p>",
    "<p>In short, all fats are composed of a mixture of saturated, monounsaturated and polyunsaturated fatty acids.</p>",
    "<p>Seed oils are composed of mainly linoleic acid – or Omega-6 – which is an inflammatory <span style='background-color: #C90000; color: whitesmoke;'>PUFA</span> vulnerable to oxidation within the body. This oxidation can kick off inflammation and hormone disruption.</p>",
    "<p>Consuming these oils regularly poses several risks to human health, primarily because of their fatty acid makeup and harsh processing.</p>",
    "<p>Scientists believe we used to consume Omega-3s and Omega-6s in a <span style='background-color: #B8C46B;'>1:1 ratio.</span> Today, that ratio is roughly <span style='background-color: #C90000; color: whitesmoke;'>1:16, lopsided on seed oils.</span> This shift occurred in the last century and is unprecedented in human history.</p>",
    "<p>Seed oil consumption has been associated with a slew of harmful conditions.</p>",
    "<p>And in a society that has also seen a simultaneous exponential increase in sugar and processed grain consumption, seed oils are just one of the pitfalls of the American diet. So how did we get here?</p>",
    "<p>In the late 1800s, two businessmen formed the soap company <span style='background-color: #005BA2; color: whitesmoke;'>Procter & Gamble.</span> And in order to reduce the price of materials, they replaced animal fats with plant oils to create the first bar soap. They eventually settled on a byproduct of the cotton industry.</p>",
    "<p>Thus the glorious Crisco was born from cottonseed oil. And it would find its way into kitchens across America thanks to the process of hydrogenation: turning liquid fats into solids to resemble lard.</p>",
    "<p>But there was one problem, how would P&G convince people to give up the animal fats people cooked with for ages for this factory substitute?</p>",
    "<p>Messaging of a truly delicious standard: Crisco fought to convince people of its purity and edibility, making patriotic ploys and marketing its new product as just <span style='background-color: #F20708; color: whitesmoke;'>“so digestible.”</span></p>"
  ];

  const chartSteps = [
  "<p>Red meat was the most popular option for protein historically, but the decline in beef consumption can largely be attributed to the concern that saturated fat led to heart disease.</p>",
  "<p>We began to replace beef with chicken. As of the 2020s, Chicken availability has more than doubled since 1980.</p>",
  "<p>Milk consumption has declined consistently since the 1970s, but yogurt and other dairy products have gained popularity, keeping dairy intake steady.</p>",
  "<p>What about eggs?</p>",
  "<p>The majority of calories in the American diet actually come from added oils and carbohydrates. Note that in 2000, the USDA changed how fats are reported. Regardless, there are significantly more calories from added oils than animal fats.</p>",
  "<p>We eat roughly the same amount of foods containing saturated fat, yet obesity, cardiovascular disease 🫀and Alzheimer’s 🧠 are rampant. If Ancel Keys were right, our rates of these diseases would have decreased 📉over the past 60 years.</p>"
  ];
</script>

<header aria-hidden="false">
  <figure class="padded">
    <a href="https://usrtk.org/" target="_blank" rel="noreferrer">
      <img src="img/usrtk.svg" class="logo" alt="USRTK Logo" />
    </a>
  </figure>
  
  <banner aria-label="title">
    <h1>Seed oils: The expanding backbone of the American diet and its health effects</h1>
  </banner>

  <h3 class="byline" aria-label="byline">
   Posted: April 20, 2023 by <a href='https://datadanica.com' target="_blank" aria-label="Danica Jefferies website (new tab)">Danica Jefferies</a>
  </h3>

  <section id="intro" aria-label="narrative">
    <!-- <p>When my father was in anesthesia school, he was asked to justify his daily dietary choices with their class material. “One egg, but never the yolk because of the cholesterol,” was his most common entry. “Low salt and I also try to stay away from saturated fat, in favor of heart healthy fats like vegetable oils.”</p>

    <p>Like millions of other Americans born after World War II, he avoided saturated fat while shoving down the new wave of ultra-processed snack foods and spreading margarine on processed wheat. Chances are, your mother also insisted on cooking all her recipes with vegetable oils in the interest of health.</p> -->
    
    <p>For thousands of years, humans consumed and cooked with animal fats like butter and lard. But like many modern foods, the industrially processed seed oils like canola, soybean and sunflower that we’ve come to know collectively as <span style="background-color: #FFDD73;">“heart-healthy vegetable oil”</span> did not make their way into the human diet until just over a century ago. Today, they’re found ubiquitously in kitchen cabinets and very few restaurants cook without them.</p>
    
    <p>Since the late 1800s, nearly everyone and their mother has consumed these seed oils steeped in corporate influence and misleading research – and in copious amounts. In 2010, researchers estimated that per-capita seed oil consumption <a href="https://pubmed.ncbi.nlm.nih.gov/21367944/" target="_blank">skyrocketed over 1,000-fold</a> between 1909 and 1999.</p>
    
    <p>But research over the last five decades has consistently re-evaluated the concept that dietary fat causes heart disease. Simply because despite swapping almost all instances of animal fat for vegetable oils, rates of cardiac deaths and disease, obesity, fatty liver, diabetes and Alzheimer’s have only shot up.</p>
    
    <p>The U.S. vegetable oil market is worth <a href =”https://www.alliedmarketresearch.com/us-vegetable-oil-market-A07961” target=”_blank”>nearly $100 billion </a> and projected to grow another 30% by 2027. But since their inception, seed oils have been pushed by corporate interests void of concern for its health impacts. Scientists repeatedly find risks to consuming these oils, including links to diabetes and obesity, and altering the <a href=”https://academic.oup.com/endo/article/161/2/bqz044/5698148” target=”_blank”>gene expression and regulation of the hypothalamus</a>, the part of the brain that controls appetite. Yet they are regularly accepted as the <a href=”https://www.hsph.harvard.edu/news/hsph-in-the-news/scientists-debunk-seed-oil-health-risks/” target=”_blank”>healthy norm</a>.</p>

    </section>
  </header>


<main>
<!-- Side by side scroller with images-->
<section>
  <div class="section-container">
    <div class="steps-container">
      <Scrolly bind:value>
        {#each steps as text, i}
          <div class="step" class:active={value === i}>
            <div aria-label="narrative" class="step-content">{@html text}</div>
          </div>
        {/each}
        <div class="spacer" />
      </Scrolly>
    </div>
    <div class="sticky">
      <!-- <Scatterplot step={value} /> -->
    <Frame step={value}/>

    </div>
  </div>

</section>

<!-- <div class="temporary"><p>Filler text will go here to elaborate on what studies say, need to elaborate more on HDL/LDL cholesterol, health and environmental consequences before getting into the next sections.</p></div> -->

<section class="narrative">
  <h2>Am I eating seed oils?</h2>
  <p>Good question. Seed oils are found in most consumer products, including supposedly healthy, organic and non-GMO ones. Many grain-based and processed foods including cookies and crackers, chips, bread, pizza, frozen meals and desserts contain seed oils, which can help foods appear glazed or golden. And vegans beware, most plant-based substitutes are made with a seed oil base.<p>

  <p>One of the reasons corn and soybean oil are so superfluous is because  these monocrops are subsidized by the government for mass production. Profit margins for companies increase, while farmers take a hit and are forced to produce more and more commodity crops to maintain a living. Surplus of cheap grain turns into high-fructose corn syrup, sweeteners, preservatives and citric acid among other things, including seed oils.</p>
  <h3>Do you know what's in your cart?</h3>
</section>
    

  <section id="flipcards" class="flipcards">
      <Card />
      <Card4 />
      <Card2 />
      <Card3 />
  </section>


<section class="narrative">
  <h3>Monumental decisions made on shaky ground</h3>
  <p>By the 1950s, the increasing rate of cardiovascular disease and heart attacks frightened Americans. Until Ancel Keys, a physiologist from the University of Minnesota, came forward with a solution.</p>

  <p>Keys’ hypothesis – called the Diet-Heart Hypothesis – was that dietary fat was at the heart of cardiovascular disease. And though he is often credited with setting off a chain reaction of attacks on America’s ultimate enemy, saturated fat, his conclusion was ultimately based on shaky ground.</p>

  <p>In 1953, Keys published and presented “Atherosclerosis: A Problem in Newer Public Health.” At the center of the study was a graphic depicting a near perfect correlation between dietary fat and coronary disease. He included six countries in this model, with little reasoning for selecting these specific European countries.</p>

  <p>This would only be the first of several studies Keys and fellow researchers would go on to complete. In what’s known as the Seven Countries Study, Keys collected data on the diet, lifestyle and health of thousands of men from the United States, Finland, the Netherlands, Italy, Greece, the former Yugoslavia and Japan. The findings, published in 1970, ignored the high saturated fat consumption in countries like Mexico, Chile and France, a country with low incidence of heart disease.</p>

  <p>Biostatisticians at the University of California, Berkeley rebutted Keys’ conclusions with their own study in 1957. Re-examination of the dietary data for 22 countries – all that was available from the United Nations’ Food and Agriculture Statistics at the time – confirmed that dietary fat was actually not a strong predictor of heart disease mortality. There were slightly stronger relationships between the percentage of animal protein consumed, and larger correlations with the amount of carbohydrates.</p>

  <img src="img/ancel.png" alt="Ancel Keys ALT TEXT" style="width: 100%"/>

  <p>“It is immediately obvious that the inclusion of all the countries greatly reduces the apparent association,” the statisticians noted when they included all 22 countries in the model, instead of just 6.</p>

  <p>In fact, they had a negative relationship between fat consumption and vascular lesions. But Keys went unchallenged.</p>

  <p>Other researchers remained skeptical as well. John Yudkin, a professor of nutrition and dietetics at the University of London, pushed back against the fat hypothesis in favor of one involving sugar. His comments appeared in The New York Times and The Lancet, a prominent medical journal. His point? Sugar and fat consumption often rise together in wealthy nations, and are therefore conflated.</p> 


  <h3>A landscape of confusion and collusion</h3>
  <p>Funding decides what studies are done in the first place. And though good quality, respectable science is subject to peer reviews and critiques, it doesn’t always escape the question of influence through funding. This is why researchers are required to disclose their conflicts of interest. 

  <p>Similarly, some organizations accept funding from corporate interests while claiming to promote and fight for the health of millions of people.</p>

  <p>Procter & Gamble, rich off its fried fortune in the 1940s, decided to contribute to small organizations, namely the American Heart Association. Now one of the world’s leading authorities on heart disease, the AHA gained prominence thanks to P&G’s support – $1.7 million – and by 1961, began formally recommending vegetable oils over animal fats.</p>

  <p>Unlike organic or non-GMO produce, there is no label to alert consumers of seed oil content. But there are several labels to indicate whether foods contain “heart healthy” vegetable oils – a stamp of approval from the AHA found on a plethora of ultra-processed foods.</p>

  <p>The world of seed oil research is convoluted and limited, with much of it based on the premise of Keys’ early works and hypotheses. A 1989 study in an official AHA journal promoted cooking with corn oil. Upon re-evaluation of the unpublished data in 2016, researchers concluded that while replacing saturated fat with PUFAs lowers blood cholesterol levels, it does not translate to lower risk of death from coronary heart disease. Rather, in adults over 65, a decrease in blood cholesterol led to a 35% higher risk of death.</p>
</section>


<section>
  <div class="section-container">
    <div class="steps-container">
      <Scrolly bind:value>
        {#each chartSteps as text, i}
          <div class="step" class:active={value === i}>
            <div aria-label="narrative" class="step-content-side">{@html text}</div>
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

<section class="narrative">
  <p>It’s evident from the data that swapping the primary source of fat in the American diet with polyunsaturated seed oils did not succeed in reducing rates of heart disease, obesity nor diabetes or fatty liver disease.</p>
</section>
</main>



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
    /* height: 40vh; */
    height: 80vh;
  }

  .sticky {
    position: sticky;
    top: 10%;
    flex: 1 1 80%;
    width: 80%;
    /* height: 100vh;  */
    max-width: 1280px;
    z-index: 0;
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
    position: relative;
    z-index: 10;
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
    position: relative;
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
    position: relative;
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

  #flipcards {
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
  }

  .logo {
    height: 6em;
    padding: 1em;
    will-change: filter;
    transition: filter 300ms;
  }

  .temporary {
    height: 250px;
    background-color: orange;
  }

  /* Media queries to resize the ai2html graphics for wide versus mobile */
  @media screen and (max-width: 550px) {
    .section-container {
      flex-direction: column-reverse;
    }
    .sticky {
      width: 95%;
      margin: auto;
      z-index: 0;
    }

    .step {
      height: 80vh;
      display: flex;
      place-items: center;
      justify-content: center;
      position: relative;
      z-index: 10;
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

    .step-content {
      font-size: 1rem;
      background: whitesmoke;
      color: black;
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
      z-index: 10;
      position: relative;
    }

    .step-content-side {
      font-size: 1rem;
      background: whitesmoke;
      color: black;
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
      z-index: 10;
      position: relative;
    }
  }

  </style>
