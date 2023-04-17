<script>
  import Scrolly from './lib/Scrolly.svelte'
  import Linechart from './lib/Linechart.svelte'
  import Chart from "chart.js";
  import Frame from './lib/Frame.svelte';
  import MargCard from './flipcards/margCard.svelte';
  import FormulaCard from './flipcards/formulaCard.svelte';
  import GranolaCard from './flipcards/granolaCard.svelte';
  import OatmilkCard from './flipcards/oatmilkCard.svelte';
  let value;

  const steps = [
    "<p>Introducing ultra-processed food’s best friend: seed oils.<br><br>Note that some plant-based oils, such as olive and avocado, actually come from the fruit and not the seed.</p>",
    "<p>In case you skipped science class, all fats are composed of a mixture of saturated, monounsaturated and polyunsaturated fatty acids.</p>",
    "<p>Seed oils are composed of mainly linoleic acid – or Omega-6 – which is an inflammatory <span style='background-color: #C90000; color: whitesmoke;'>PUFA</span> vulnerable to oxidation within the body. This oxidation can kick off inflammation and hormone disruption.</p>",
    "<p>Scientists believe we used to consume Omega-3s and Omega-6s in a <span style='background-color: #B8C46B;'>1:1 ratio.</span> Today, that ratio is roughly <span style='background-color: #C90000; color: whitesmoke;'>1:16, lopsided on seed oils.</span> This shift occurred in the last century and is unprecedented in human history.</p>",
    "<p>Unlike butter or ghee, these fats are also liquid at room temperature and shelf-stable for 1-2 years. This is possible because the oilseeds are doused in a hexane bath before being heated and crushed to extract the oil – creating transfats in the process.</p>",
    "<p>Seed oil consumption has been associated with a slew of harmful conditions.</p>",
    "<p>And in a society that has also seen a simultaneous exponential increase in sugar and processed grain consumption, seed oils are just one of the pitfalls of the American diet. So how did we get here?</p>",
    "<p>In the late 1800s, two businessmen formed the soap company <span style='background-color: #005BA2; color: whitesmoke;'>Procter & Gamble.</span> And in order to reduce the price of materials, they replaced animal fats with plant oils to create the first bar soap. They eventually settled on a byproduct of the cotton industry.</p>",
    "<p>Thus Crisco was born from cottonseed oil. And it would find its way into kitchens across America thanks to the process of hydrogenation: turning liquid fats into solids to resemble lard.</p>",
    "<p>But there was one problem, how would P&G convince people to give up the animal fats people cooked with for ages for this factory substitute?</p>",
    "<p>Messaging of a truly delicious standard: Crisco fought to convince people of its purity and edibility, making patriotic ploys and marketing its new product as just <span style='background-color: #F20708; color: whitesmoke;'>“so digestible.”</span></p>"
  ];

  const chartSteps = [
  "<p><span style='background-color: #0B5FA5; color: whitesmoke'>Beef</span> was the most popular option for protein historically, but the decline in its consumption can largely be attributed to the concern that saturated fat led to heart disease.</p>",
  "<p>We began to replace beef with <span style='background-color: #B8C46B;'>chicken</span>, which is the most popular form of animal protein in the U.S. today.</p>",
  "<p><span style='background-color: #D773D3; color: whitesmoke;'>Milk consumption</span> has declined consistently since the 1970s, but yogurt and other dairy products have gained popularity, keeping dairy intake steady.</p>",
  "<p>What about <span style='background-color: #FDC64B;'>eggs</span>? Those are high in cholesterol.</p>",
  "<p>The majority of calories in the American diet actually come from <span style='background-color: #c90000; color: whitesmoke'>added oils</span> and carbohydrates. Note that in 2000, the USDA changed how fats are reported. Regardless, there are significantly more calories from added oils than animal fats.</p>",
  "<p>We eat roughly the same amount of foods containing saturated fat, yet obesity, cardiovascular disease 🫀and Alzheimer’s 🧠 are rampant.</p>",
  "<p>If the Diet-Heart Hypothesis were right, our rates of these diseases would have <span style='background-color: #0B5FA5; color: whitesmoke'>decreased 📉</span> with the <span style='background-color: #c90000; color: whitesmoke'>increase of unsaturated fat 📈 </span> over the past 60 years.</p>"
  ];
</script>

<header aria-hidden="false" aria-label="header">
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

  <figure>
    <img src="img/ahabanner.png" alt="American Heart Association heart healthy label" style="height: 15vh; display: block; margin-left: auto; margin-right: auto;"/>
  </figure>

  <section id="intro" aria-label="narrative" aria-hidden="false">
    <p>For thousands of years, humans consumed and cooked with animal fats like butter and lard. But like many modern foods, the industrially processed seed oils like canola, soybean and sunflower that we’ve come to know collectively as <span style="background-color: #FFDD73;">“vegetable oil”</span> did not make their way into the human diet until just over a century ago. Today, they’re found ubiquitously in kitchen cabinets and few restaurants cook without them.</p>
    
    <p>Since the late 1800s, nearly everyone and their mother, consumed with the fear that saturated fat could be the main cause of heart disease, has consumed these seed oils in copious amounts. In fact, researchers have estimated that per-capita seed oil consumption <a href="https://pubmed.ncbi.nlm.nih.gov/21367944/" target="_blank">skyrocketed over 1,000-fold</a> between 1909 and 1999.</p>
    
    <p>But research over the last five decades has consistently re-evaluated the concept that saturated fat causes heart disease. Simply because despite swapping almost all instances of animal fat for vegetable oils, rates of cardiovascular deaths and disease, obesity, nonalcoholic fatty liver, diabetes and Alzheimer’s have only shot up.</p>
    
    <p>The U.S. vegetable oil market is worth <a href="https://www.alliedmarketresearch.com/us-vegetable-oil-market-A07961" target="_blank">nearly $100 billion</a> and projected to grow another 30% by 2027. But since their inception, seed oils have been steeped in profits and corporate influence void of concern for its health impacts. Scientists have repeatedly found risks to consuming these oils, including links to diabetes and obesity, and altering the <a href="https://academic.oup.com/endo/article/161/2/bqz044/5698148" target="_blank">gene expression and regulation of the hypothalamus</a>, the part of the brain that controls appetite. Yet they are often accepted as <a href="https://www.hsph.harvard.edu/news/hsph-in-the-news/scientists-debunk-seed-oil-health-risks/" target="_blank">healthy products</a>.</p>

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
    <Frame step={value}/>

    </div>
  </div>

</section>

<section class="narrative" aria-label="section">
  <h2>Am I eating seed oils?</h2>
  <p>Good question. Walk into any supermarket and flip over a box of your favorite snack. Seed oils are found in most consumer products, including supposedly healthy, organic and non-GMO ones. Many grain-based and processed foods including cookies and crackers, bars, chips, bread, pizza, nut butters and nut milks, frozen meals and desserts contain seed oils, which can help foods appear glazed or golden. And vegans beware, most plant-based substitutes are made with a seed oil base.<p>

  <p>One of the reasons corn and soybean oil are so superfluous is because  these monocrops are subsidized for mass production. Profit margins for companies increase, while farmers take a hit and are forced to produce more and more commodity crops to maintain a living. Surplus of cheap grain turns into high-fructose corn syrup, sweeteners, preservatives and citric acid among other things, including seed oils.</p>
  <h3>Do you know what's in your cart? Click the items below to check their labels.</h3>
</section>
    

  <section id="flipcards" class="flipcards" aria-label="interactive cards" aria-hidden="false" >
      <OatmilkCard/>
      <GranolaCard />
      <FormulaCard />
      <MargCard />
  </section>


<section class="narrative" aria-label="section">
  <h3>Monumental decisions made on shaky ground</h3>
  <p>By the 1950s, the increasing rate of cardiovascular disease and heart attacks frightened Americans. Until Ancel Keys, a physiologist from the University of Minnesota, came forward with a solution.</p>

  <p>Keys’ hypothesis – called the Diet-Heart Hypothesis – was that dietary fat was at the heart of cardiovascular disease. And though he is often credited with setting off a chain reaction of attacks on America’s ultimate enemy, saturated fat, his conclusion was based on shaky ground.</p>

  <p>In 1953, Keys published and presented “<a href ="http://www.epi.umn.edu/cvdepi/wp-content/uploads/2014/03/Keys-Atherosclerosis-A-Problem-in-Newer-Public-Health.pdf" target="_blank">Atherosclerosis: A Problem in Newer Public Health</a>.” At the center of the study was a graphic depicting a near perfect correlation between dietary fat and coronary disease. He included six countries in this model, with little reasoning for selecting these specific European countries.</p>

  <p>This would only be the first of several studies Keys and fellow researchers would go on to complete. In what’s known as the <a href="https://pubmed.ncbi.nlm.nih.gov/6739443/" target="_blank">Seven Countries Study</a>, Keys collected data on the diet, lifestyle and health of thousands of men from the United States, Finland, the Netherlands, Italy, Greece, the former Yugoslavia and Japan. The findings, published in 1970, ignored the high saturated fat consumption in countries like Mexico, Chile and France, a country with low incidence of heart disease.</p>

  <p>Biostatisticians at the University of California, Berkeley <a href="http://library.crossfit.com/free/pdf/1957_Yerushalmy_Hilleboe_Fat_Diet_Mortality_Heart_Disease.pdf?_ga=2.35906279.698580677.1681433498-1348251230.1681433498" target="_blank">rebutted Keys’ conclusions with their own study in 1957</a>. Re-examination of the dietary data for 22 countries – all that was available from the United Nations’ Food and Agriculture Statistics at the time – confirmed that dietary fat was actually not a strong predictor of heart disease mortality. There were slightly stronger relationships between the percentage of animal protein consumed, and larger correlations with the amount of carbohydrates.</p>

  <img src="img/ancel.png" alt="On the right is Ancel Keys' graph depicting dietary fat as the cause of heart disease. On the left is another graph with more data showing less correlation." style="width: 100%"/>

  <p>“It is immediately obvious that the inclusion of all the countries greatly reduces the apparent association,” wrote researchers Jacob Yerushalmy and Herman Hilleboe, when they included 22 countries in the model instead of just the 6 that Keys selected.</p>

  <p>They also note that the data may not have been consistently measured across all countries, making conclusions and forecasting difficult. A negative relationship between fat consumption and vascular lesions was found between some countries. But Keys went unchallenged.</p>

  <p>Other researchers remained skeptical as well. John Yudkin, a professor of nutrition and dietetics at the University of London, pushed back against the fat hypothesis in favor of one involving sugar. His <a href="https://www.nytimes.com/1964/07/03/archives/sugar-gets-role-in-heart-disease-briton-doubts-high-fat-in-diet-is.html" target="_blank">comments appeared in The New York Times</a> and The Lancet, a prominent medical journal. His point? Sugar and fat consumption often rise together in wealthy nations, and are therefore conflated.</p> 


  <h3>A landscape of confusion</h3>
  <p>Funding decides what studies are done in the first place. And though good quality, respectable science is subject to peer reviews and critiques, it doesn’t always escape the question of influence through funding. This is why researchers are required to disclose their conflicts of interest.Similarly, some organizations accept funding from corporate interests while claiming to promote the health of millions of people.</p>

  <p>Procter & Gamble, rich off its fried fortune in the 1940s, decided to contribute to small organizations, namely the American Heart Association. Now one of the world’s leading authorities on heart disease, the AHA gained prominence thanks to P&G’s support – $1.7 million – and by 1961, began formally recommending vegetable oils over animal fats.</p>

  <p>Unlike organic or non-GMO produce, there is no label to alert consumers of seed oil content. But there are several labels to indicate whether foods contain “heart healthy” vegetable oils – a stamp of approval from the AHA found on a plethora of ultra-processed foods.</p>

  <p>The world of seed oil research is convoluted and limited, with much of it based on the premise of Keys’ early works and hypotheses. A <a href="https://www.ahajournals.org/doi/10.1161/01.ATV.9.1.129" target="_blank">1989 study in an official AHA journal</a> promoted cooking with corn oil. Upon re-evaluation of the unpublished data in 2016, researchers concluded that while replacing saturated fat with PUFAs lowered blood cholesterol levels, it did not translate to lower risk of death from coronary heart disease. Rather, in adults over 65, a decrease in blood cholesterol led to a <a href="https://www.bmj.com/content/353/bmj.i1246" target="_blank">35% higher risk of death</a>.</p>
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
    <div class="sticky-linechart">
      <Linechart step={value}/>
    </div>
  </div>
</section>

<section class="narrative" aria-label="section">
  <h3>Compare fat consumption by country</h3>
  <p>It's apparent that increasing consumption of PUFAs failed to solve America's deadly and costly heart disease problem. During our effort to double-down on saturated fat, seed oils have thrived in the same environment that commodity crops, factory farms, ultra-processed and fast foods have. </p>
  
  <p>They may, in fact, enable it. Seed oils represent a form of fat that is nowhere to be found in nature and are shelf-stable for years at a time, inserted into most hyperpalatable foods while simultaneously reducing the brain's ability to regulate hunger.</p>

  <p>Have you ever heard someone say they can eat certain foods in other countries, but not America? Seed oils may have something to do with it. Although the U.S. is not the only country that consumes seed oils, the daily amount consumed per person in calories is a rarity.</p>
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

  .sticky-linechart {
    position: sticky;
    top: 10%;
    padding: 0 5% 0 0;
    flex: 1 1 70%;
    width: 70%;
    max-width: 1280px;
    z-index: 0;
  }

  .steps-container,
  .sticky-linechart {
    height: 100%;
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

    .sticky-linechart {
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

    .steps-container,
    .sticky-linechart {
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
