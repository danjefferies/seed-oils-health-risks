<script>
    // className={(isFlipped ? "flipped" : "" ) + " flip-card" }
    // onClick={()=> setIsFlipped(!isFlipped)}
    let flipped = false;
</script>


<section class:flipped on:click="{() => flipped = !flipped}">
    <div class="flip-card">
        <div class="flip-card-inner">
        <div class="flip-card-front">
            <img src="img/granola.png" alt="side A"/>
        </div>
        <div class="flip-card-back">
            <img src="img/granola-back.png" alt="side B" />
        </div>
        </div>
    </div>
</section>

    
<style>

    img{
    width: 240px;
    height: 360px;
    }

    /* Flip card toggle */
    .flip-card {
    background-color: transparent;
    width: 240px;
    height: 360px;
    perspective: 1000px;
    cursor: pointer;
    user-select: none;
    padding: 10px;
    }

    .flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
    transition: transform 0.6s;
    transform-style: preserve-3d;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }

    .flipped .flip-card .flip-card-inner {
    transform: rotateY(180deg);
    }

    .flip-card-front,
    .flip-card-back {
    position: absolute;
    width: 100%;
    height: 100%;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    }

    .flip-card-front {
    background-color: #bbb;
    color: black;
    }

    .flip-card-back {
    background-color: #2980b9;
    transform: rotateY(180deg);
    }

    @media screen and (max-width: 650px) {
    img{
    width: 160px;
    height: 240px;
    }

    /* Flip card toggle */
    .flip-card {
    width: 160px;
    height: 240px;
    }
    }
</style>