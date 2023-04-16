<script>
    export let step;
  
      // setup list of images to be passed in
      let backdrops = [
        {
          src: "img/ai2html-output/seedoil-banner.html",
          title: "A graphic of the different types of seed oils: Canola, soybean, vegetable or blends, sunflower, peanut, corn, margarine, cottonseed and sprayable oils."
        },
        {
          src: "img/ai2html-output/fat-forms.html",
          title: "A diagram of the three forms of fats. The first is saturated fat, which comes from mainly animals. The second is monounsaturated, which comes from olive, avocado and fish oil. The  third is polyunsaturated, which comes from seeds and plants."
        },
        {
          src: "img/ai2html-output/fatty-acids.html",
          title: "A bar chart color-coded by the fatty acid composition of common cooking oils. The seed oils have the most polyunsaturated fat, usually between 30-90% content. Butter and olive and palm oil have less than 30% unsaturated fat and more saturated fat."
        },
        {
          src: "img/ai2html-output/research.html",
          title: "ALT TEXT"
        },
        {
          src: "img/ai2html-output/early-ads.html",
          title: "Images of early Crisco margarine ads from the 1950s. On the ads is the text 'Just so digestible.'"
        },
        {
          src: "img/ai2html-output/crisco2.html",
          title: "ALT"
        }
      ];
  
      function changeBackground(s){
        console.log(s);
        if (s != undefined) {
          switch(s){
            case 0:
              return backdrops[0];
            case 1:
              return backdrops[1];
            case 2:
              return backdrops[2];
            case 3:
              return backdrops[2];
            case 4:
              return backdrops[2];
            case 5:
              return backdrops[3];
            case 6:
              return backdrops[3];
            case 7:
              return backdrops[4];
            case 8:
              return backdrops[4];
            case 9:
              return backdrops[5];
            case 10:
              return backdrops[5];
          }
        } 
        return backdrops[5];
      }
  
      $: backdrop = changeBackground(step)
    </script>

    <iframe class="mobile-ai2html"
        src={backdrop.src}
        title={backdrop.title}
        scrolling="no"/>

<style>
  .mobile-ai2html{
    border: none;
    width: 100%;
    height: 500px;
  }

  @media screen and (min-width: 501px) and (max-width: 650px) {
      .mobile-ai2html {
        z-index: 0;
        position: relative;
        height: 500px;
      }
  }

    @media screen and (max-width: 500px) {
      .mobile-ai2html {
        z-index: 0;
        position: relative;
        height: 650px;
      }
  }
</style>