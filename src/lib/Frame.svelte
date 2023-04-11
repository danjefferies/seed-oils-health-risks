<script>
    export let step;
  
      // setup list of images to be passed in
      let backdrops = [
        {
          src: "img/ai2html-output/fat-forms.html",
          title: "Types of fatty acids"
        },
        {
          src: "img/ai2html-output/fatty-acids.html",
          title: "Fatty acid composition of common cooking oils"
        },
        {
          src: "img/ai2html-output/fatty-acids.html"
        },
        {
          src: "img/ai2html-output/seedoil-banner.html"
        }
      ];
  
      function changeBackground(s){
        console.log(s);
        if (s != undefined) {
          switch(s){
            case 0:
              return backdrops[3];
            case 1:
              return backdrops[0];
            case 2:
              return backdrops[0];
            case 3:
              return backdrops[1];
            case 4:
              return backdrops[2];
            case 5:
              return backdrops[2];
          }
        } 
        return backdrops[0];
      }
  
      $: backdrop = changeBackground(step)
    </script>

    <iframe class="mobile-ai2html"
        src={backdrop.src}
        title={backdrop.title}
        style="border: none;" width="100%" height="550px" scrolling="no"/>

<style>
    @media screen and (max-width: 700px) {
      .mobile-ai2html {
        z-index: 0;
        position: relative;
      }
  }
</style>