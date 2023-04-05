<script>
    export let step;
  
      // setup list of images to be passed in
      let backdrops = [
        {
          src: "src/img/crisco1.jpg"
        },
        {
          src: "src/img/crisco1.jpg"
        },
        {
          src: "src/img/crisco2.jpg"
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
          }
        } 
        return backdrops[0];
      }
  
      $: backdrop = changeBackground(step)
    </script>

<div>
        <img class="background-img"
          src={backdrop.src}
          alt={backdrop.src}/>
</div>