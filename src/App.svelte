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
    "<p>Introducing ultra-processed food’s closest friend: seed oils. Do you know what's in these oils and how they are made?</p>",
    "<p>In case you skipped science class, all fats are composed of a mixture of saturated, monounsaturated and polyunsaturated fatty acids. PUFAs come in a few forms, Omega-3 and Omega-6 are the most common.</p>",
    "<p>While both Omega sources are necessary for proper growth, brain development and cell membrane health, evidence suggests that excessive Omega-6 consumption <a href='https://www.sciencedirect.com/science/article/pii/S0024320518302303?via%3Dihub' target='_blank'>promotes inflammation</a>.</p>",
    "<p>Seed oils are mainly composed of <span style='background-color: #C90000; color: whitesmoke; padding: 0.2em;'>Omega-6s</span>, some of which are inflammatory and vulnerable to oxidation within the body. This oxidation can kick off inflammation and hormone disruption.</p>",
    "<p>Scientists believe we used to consume Omega-6s and Omega-3s in a 1:1 ratio. Today in Western diets, the ratio is <a href='https://pubmed.ncbi.nlm.nih.gov/12442909/#:~:text=Abstract,%2F1%2D16.7%2F1.' target='_blank'>16 times higher for seed oil's Omega 6s</a>. This shift occurred in the last century and is unprecedented in human history.</p>",
    "<p>How are seed oils made? It involves everything from hexane to preservatives of dubious safety such as BHA and BHT.</p>",
    "<p>Seed oil consumption has been associated with a slew of harmful conditions.</p>",
    "<p>And in a society where sugar and processed grain consumption have simultaneously increased, seed oils are just one of the pitfalls of the American diet. So how did we get here?</p>",
    "<p>In the late 1800s, two businessmen formed the soap company Procter & Gamble. To reduce the price of materials, they replaced animal fats with plant oils to create the first bar soap. They eventually settled on a <span style='background-color: #0B5FA5; color: whitesmoke; padding: 0.2em;'>byproduct of the cotton industry.</span></p>",
    "<p>Thus Crisco was born of cottonseed oil. And it would find its way into kitchens across America thanks to the process of hydrogenation: turning liquid fats into solids to resemble lard.</p>",
    "<p>But there was one problem, how would P&G convince people to give up the animal fats people cooked with for ages for a factory substitute?</p>",
    "<p>Messaging of a truly delicious standard: Crisco fought to convince people of its purity and edibility, making patriotic ploys and marketing its new product as just “so digestible.”</p>"
  ];

  const chartSteps = [
  "<p><span style='background-color: #0B5FA5; padding: 0.2em; color: whitesmoke';>Beef</span> was the most popular option for protein in the U.S. historically, but the decline in its consumption can largely be attributed to the concern that saturated fat led to heart disease.</p>",
  "<p>Americans began to replace beef with <span style='background-color: #B8C46B; padding: 0.2em;'>chicken,</span> which is the most popular form of animal protein in the U.S. today.</p>",
  "<p><span style='background-color: #D773D3; padding: 0.2em; color: whitesmoke;'>Milk consumption</span> has declined since the 1970s, but yogurt and other dairy products have gained popularity, keeping dairy intake steady.</p>",
  "<p>What about <span style='background-color: #FDC64B; padding: 0.2em;'>eggs</span>?</p>",
  "<p>The majority of calories in the American diet actually come from carbohydrates and <span style='background-color: #c90000; padding: 0.2em; color: whitesmoke'>added oils</span>. These are America's most consumed source of fat.<p>",
  "<p>Over the last half-century, rates of obesity, cardiovascular disease 🫀 and Alzheimer’s 🧠 have risen following the widespread transition from animal fats to seed oils.</p>",
  "<p>If the Diet-Heart Hypothesis were right, our rates of these diseases would have decreased 📉 with the increase of unsaturated fat 📈 over the past 60 years.</p>"
  ];
</script>

<header>
  <figure class="padded">
    <!-- <a href="https://usrtk.org/" target="_blank" rel="noreferrer"> -->
      <img src="img/heart-healthy.png" class="logo" alt="Heart healthy logo" />
    <!-- </a> -->
  </figure>
  
  <banner>
    <h1>Seed oils: Decades of science point to health risks of America’s most consumed fats</h1>
  </banner>

  <h3 class="byline">
    Posted on June 29, 2023 by <a href='https://datadanica.com' target="_blank">Danica Jefferies</a>
  </h3>

  <section class="narrative">
    <p>For thousands of years, people have consumed and cooked with animal fats like butter and lard. But today, industrially processed seed oils are nearly ubiquitous in kitchens, and few restaurants cook without them. Like many modern foods, seed oils like canola, soybean and sunflower – known collectively as “vegetable oil” – did not find their way into the human diet until just over a century ago.</p>
    
    <p>The vegetable oils lining grocery store shelves are industrially extracted from seeds – not vegetables – hence the name “seed oils.” Unlike olive or coconut oils, which are pressed from fruits, oilseeds are ground and pressed before the oils are extracted using petroleum-based solvents like hexane. Afterward, they are often refined, deodorized and bleached, yet seed oils are commonly called <a href="https://www.hsph.harvard.edu/news/hsph-in-the-news/scientists-debunk-seed-oil-health-risks/" target="_blank">healthy, plant-based fats</a>.</p>

    <p>But scientists have repeatedly found <a href="https://www.sciencedirect.com/science/article/abs/pii/S0955286323000645" target="_blank">health risks</a> to consuming these oils, including links to <a href="https://openheart.bmj.com/content/5/2/e000898" target="_blank">cardiovascular disease</a> and even a <a href="https://www.bmj.com/content/353/bmj.i1246" target="_blank">higher risk of death</a> when <a href="https://www.bmj.com/content/346/bmj.e8707" target="_blank">substituting saturated fat with seed oils</a>. But <a href="https://jamanetwork.com/journals/jamainternalmedicine/article-abstract/2548255" target="_blank">industry disinformation</a> and aggressive advertising have pushed Americans and people around the world to eat more seed oils each year. </p>

    <p> In fact, researchers have estimated that per-capita seed oil consumption <a href="https://pubmed.ncbi.nlm.nih.gov/21367944/" target="_blank">skyrocketed over 1,000-fold</a> between 1909 and 1999. Americans spend nearly <a href="https://www.alliedmarketresearch.com/us-vegetable-oil-market-A07961" target="_blank">$100 billion on vegetable oil</a>, and the market is projected to grow another 30% by 2027. Due to their processing, oilseed fats are liquid at room temperature and shelf-stable for 1-2 years, allowing processed food companies to fill products from ice cream to salad dressing with seed oils.</p>

    <p>The American Heart Association began recommending vegetable oils over animal fats in 1961. Since then, rates of obesity, diabetes, nonalcoholic fatty liver and Alzheimer’s – conditions that are supposedly preventable by limiting saturated fat – have shot up in the U.S. and worldwide.</p> 

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
            <div class="step-content">{@html text}</div>
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

<section class="narrative">
  <h2>Am I eating seed oils?</h2>
  <p>Good question. Walk into any supermarket and flip over a box of your favorite snack. Seed oils are found in most grocery products, including supposedly healthy, organic and non-GMO ones. Many grain-based and processed foods including cookies and crackers, bars, chips, bread, pizza, nut butters and nut milks, frozen meals and desserts contain seed oils, which can help foods appear glazed or golden. And vegans beware, most plant-based substitutes are made with a seed oil base.<p>

  <p>One of the reasons corn and soybean oil are omnipresent is that they are products of industrial agriculture, which thrives on subsidizing monocrops for mass production. In addition, many seed oils come from genetically engineered seeds produced by agrichemical companies. For example, canola is a form of rapeseed <a href="https://scholarworks.iupui.edu/bitstream/handle/1805/808/GE%20canola.pdf?sequence=1" target="_blank">genetically modified to resist herbicide spray or produce more oil</a>. Surplus of cheap corn and soy turns into high-fructose corn syrup, sweeteners, preservatives and citric acid among other things, including seed oils.</p>

  <h3>Do you know what's in your cart? Click the items below to check their labels.</h3>
</section>
    

  <section id="flipcards" class="flipcards">
      <OatmilkCard/>
      <GranolaCard />
      <FormulaCard />
      <MargCard />
  </section>


<section class="narrative">
  <h3>Monumental decisions made on shaky research</h3>
  <p>By the 1950s, increasing rates of cardiovascular disease and heart attacks frightened Americans. Until Ancel Keys, a physiologist from the University of Minnesota, came forward with a possible solution.</p>

  <p>Keys’ hypothesis – called the Diet-Heart Hypothesis – was that dietary fat caused cardiovascular disease. And though he is often credited with setting off a chain reaction of attacks on saturated fat, his conclusions were based on shaky ground.</p>

  <p>In 1953, Keys wrote “<a href ="http://www.epi.umn.edu/cvdepi/wp-content/uploads/2014/03/Keys-Atherosclerosis-A-Problem-in-Newer-Public-Health.pdf" target="_blank">Atherosclerosis: A Problem in Newer Public Health</a>.” At the center of the study was a graphic depicting a near perfect correlation between dietary fat and coronary artery disease. He included six countries in this model, with little reasoning for selecting these specific European countries.</p>

  <p>This would only be the first of several studies Keys and fellow researchers would publish. In what’s known as the <a href="https://pubmed.ncbi.nlm.nih.gov/6739443/" target="_blank">Seven Countries Study</a>, Keys collected data on the diet, lifestyle and health of thousands of men from the United States, Finland, the Netherlands, Italy, Greece, the former Yugoslavia and Japan. The findings, published in 1970, ignored the high saturated fat consumption in countries like Mexico, Chile and France, a country with low incidence of heart disease.</p>

  <p>Biostatisticians at the University of California, Berkeley <a href="http://library.crossfit.com/free/pdf/1957_Yerushalmy_Hilleboe_Fat_Diet_Mortality_Heart_Disease.pdf?_ga=2.35906279.698580677.1681433498-1348251230.1681433498" target="_blank">rebutted Keys’ conclusions with their own study in 1957</a>. Re-examination of the dietary data for 22 countries – all that was available from the United Nations’ Food and Agriculture Statistics at the time – confirmed that dietary fat was actually not a strong predictor of heart disease mortality. There were slightly stronger relationships with the percentage of animal protein consumed, as well as carbohydrates. All dietary component predictors were non-significant for all causes of death, showing that fat consumption is not the singular cause of heart disease.</p>

  <img src="img/ancel.png" alt="On the right is Ancel Keys' graph depicting dietary fat as the cause of heart disease. On the left is another graph with more data showing less correlation." style="width: 100%"/>

  <p>“It is immediately obvious that the inclusion of all the countries greatly reduces the apparent association,” wrote researchers Jacob Yerushalmy and Herman Hilleboe, when they included 22 countries in the model instead of just the six that Keys selected.</p>

  <p>They also note that the data may not have been measured consistently across all countries, making conclusions difficult. A negative relationship between fat consumption and vascular lesions was found in some countries.</p>

  <p>Other researchers remained skeptical as well. John Yudkin, a professor of nutrition and dietetics at the University of London, pushed back against the fat hypothesis in favor of one involving sugar. His <a href="https://www.nytimes.com/1964/07/03/archives/sugar-gets-role-in-heart-disease-briton-doubts-high-fat-in-diet-is.html" target="_blank">comments appeared in The New York Times</a> and The Lancet, a prominent medical journal. His point? Sugar and fat consumption often rise together in wealthy nations, and are therefore conflated.</p> 


  <h2>“Heart healthy”</h2>

  <p>In 1948, the makers of Crisco, Procter & Gamble, <a href="https://journals.lww.com/co-endocrinology/Fulltext/2023/02000/A_short_history_of_saturated_fat__the_making_and.10.aspx" target="_blank">donated $1.7 million</a> to what was then a small organization called the American Heart Association. The AHA gained prominence thanks to P&G’s support. But throughout the 1950s, the AHA was reluctant to provide guidance on heart disease prevention, citing a lack of evidence. When Ancel Keys joined the AHA’s nutrition committee in 1960, the group began <a href="https://pubmed.ncbi.nlm.nih.gov/14447694/" target="_blank">formally recommending</a> vegetable oils over animal fats the next year. </p>

  <p>The “heart healthy” AHA stamp of approval is now found on many ultra-processed foods, encouraging their consumption as part of a diet that supposedly protects cardiovascular health, despite <a href="https://www.jacc.org/doi/10.1016/j.jacc.2021.01.047" target="_blank">ample evidence</a> that <a href="https://www.bmj.com/content/365/bmj.l1451" target="_blank">ultra-processed food increases the risk of cardiovascular disease</a>.</p>

  <p>There is some conflicting evidence about the health effects of seed oils. A global study endorsed by the AHA involving 70,000 participants – one of, if not the largest pooled analyses looking at linoleic acid levels in blood and adipose tissue – found <a href="https://www.ahajournals.org/doi/full/10.1161/CIRCULATIONAHA.118.038908#d1e3626" target="_blank">reduced risk of cardiovascular events</a> in those with higher levels of Omega-6 polyunsaturated fats. Also, a 2010 <a href="https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.1000252" target="_blank">Harvard School of Public Health study</a> found a 19% reduced risk of cardiac events and suggests “that rather than trying to lower [polyunsaturated fat] consumption, a shift toward greater population PUFA consumption” would reduce heart disease significantly. </p>
</section>


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
    <div class="sticky-linechart">
      <Linechart step={value}/>
    </div>
  </div>
</section>

<section class="narrative">
  <h2>Compare fat consumption by country</h2>
  <p>It's clear that increasing consumption of PUFAs failed to solve America's deadly and costly heart disease problem. In the century since Crisco’s creation, seed oils have thrived in the same environment that commodity crops, factory farms, ultra-processed and fast foods have.</p>
  
  <p>They may, in fact, enable it. Seed oils represent a form of fat that is nowhere to be found in nature and are shelf-stable for years at a time, inserted into most hyperpalatable foods while simultaneously reducing the brain's ability to regulate hunger. In a mouse model study, <a href="https://academic.oup.com/endo/article/161/2/bqz044/5698148" target="_blank">soybean oil altered the gene expression and regulation of the hypothalamus</a>, the part of the brain that controls appetite.</p>

  <p>Although the U.S. is not the only country that consumes seed oils, Americans get proportionally more of their daily calories from them. According to updated data from the United Nations Food and Agriculture Statistics – the same datasets Ancel Keys would have used in his model – Americans consume upward of 500 calories per day from soybean oil alone. </p>
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
    height: 10em;
    /* padding: 0.1em; */
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
