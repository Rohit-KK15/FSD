<template>
  <v-app id="home" style="height: 100%;margin: 0;overflow: hidden;background: transparent;">
    <NavBar />
      <div class="rain front-row" ref="frontRow"></div>
    <div class="rain back-row" style="display: block;" ref="backRow"></div>
    <div class="name">
      <h2>Hey, I'm</h2>
      <h1>Rohit Keerthikanth</h1>
      <div class="roleBox">
        <span class="text">I'm a </span>
        <a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.demolab.com?font=Poppins&weight=500&size=25&duration=3000&pause=2000&color=4C55F7&background=16FF0000&width=435&lines=Web+Developer;Mobile+Developer;Gamer" alt="Typing SVG" /></a>
      </div>
    </div>
  </v-app>
</template>

<script>
import NavBar from './NavBar.vue'
export default {
  components: {
    NavBar,
  },
  data() {
    return {
      role:"",
      increment: 0,
    };
  },
  methods: {

    makeItRain() {
      // Clear out everything
      const frontRow = this.$refs.frontRow;
      const backRow = this.$refs.backRow;
      frontRow.innerHTML = '';
      backRow.innerHTML = '';

      this.increment = 0;

      while (this.increment < 100) {
        // Couple random numbers to use for various randomizations
        // Random number between 98 and 1
        const randoHundo = Math.floor(Math.random() * (98 - 1 + 1) + 1);
        // Random number between 5 and 2
        const randoFiver = Math.floor(Math.random() * (5 - 2 + 1) + 2);
        // Increment
        this.increment += randoFiver;

        const drop = document.createElement('div');
        drop.className = 'drop';
        drop.style.left = this.increment + '%';
        drop.style.bottom = (randoFiver + randoFiver - 1 + 100) + '%';
        drop.style.animationDelay = '0.' + randoHundo + 's';
        drop.style.animationDuration = '0.5' + randoHundo + 's';
        
        const stem = document.createElement('div');
        stem.className = 'stem';
        stem.style.animationDelay = '0.' + randoHundo + 's';
        stem.style.animationDuration = '0.5' + randoHundo + 's';
        
        const splat = document.createElement('div');
        splat.className = 'splat';
        splat.style.animationDelay = '0.' + randoHundo + 's';
        splat.style.animationDuration = '0.5' + randoHundo + 's';
        
        drop.appendChild(stem);
        drop.appendChild(splat);
        
        const backDrop = document.createElement('div');
        backDrop.className = 'drop';
        backDrop.style.right = this.increment + '%';
        backDrop.style.bottom = (randoFiver + randoFiver - 1 + 100) + '%';
        backDrop.style.animationDelay = '0.' + randoHundo + 's';
        backDrop.style.animationDuration = '0.5' + randoHundo + 's';
        
        const backStem = document.createElement('div');
        backStem.className = 'stem';
        backStem.style.animationDelay = '0.' + randoHundo + 's';
        backStem.style.animationDuration = '0.5' + randoHundo + 's';
        
        const backSplat = document.createElement('div');
        backSplat.className = 'splat';
        backSplat.style.animationDelay = '0.' + randoHundo + 's';
        backSplat.style.animationDuration = '0.5' + randoHundo + 's';
        
        backDrop.appendChild(backStem);
        backDrop.appendChild(backSplat);
        
        frontRow.appendChild(drop);
        backRow.appendChild(backDrop);
      }
    },
    clearRows() {
      this.$refs.frontRow.innerHTML = '';
      this.$refs.backRow.innerHTML = '';
    },
  },
  mounted() {
    this.makeItRain();
  }
}
</script>


<style>

@import url('https://fonts.googleapis.com/css?family=Muli&display=swap');
@import url('https://fonts.googleapis.com/css?family=Quicksand&display=swap');


.rain {
  position: absolute;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 2;
}

.rain.back-row {
  display: none;
  z-index: 1;
  bottom: 60px;
  opacity: 0.5;
}

.drop {
  z-index: 2;
  position: absolute;
  bottom: 100%;
  width: 15px;
  height: 120px;
  pointer-events: none;
  animation: drop 0.5s linear infinite;
}

@keyframes drop {
  0% {
    transform: translateY(35vh);
  }
  75% {
    transform: translateY(100vh);
  }
  100% {
    transform: translateY(100vh);
  }
}

.stem {
  width: 1px;
  height: 60%;
  margin-left: 7px;
  background: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25));
  animation: stem 0.5s linear infinite;
}

@keyframes stem {
  0% {
    opacity: 1;
  }
  65% {
    opacity: 1;
  }
  75% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}

.splat {
  width: 15px;
  height: 10px;
  border-top: 2px dotted rgba(255, 255, 255, 0.5);
  border-radius: 50%;
  opacity: 1;
  transform: scale(0);
  animation: splat 0.5s linear infinite;
}

.v-app.splat-toggle .splat {
  display: block;
}

@keyframes splat {
  0% {
    opacity: 1;
    transform: scale(0);
  }
  80% {
    opacity: 1;
    transform: scale(0);
  }
  90% {
    opacity: 0.5;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(1.5);
  }
}

.name{
  height: 80%;
  margin: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  overflow: hidden;
  margin: 0 10% 0 10%;
}

.name h1{
  font-family: bigOver;
  text-align: left;
  /* font-size: min(6rem,15vw); */
  color: #ff2b2b;
  background-image: -webkit-linear-gradient(45deg, rgba(204,62,183,1) 0%, rgba(47,99,190,1) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  -webkit-animation: hue 5s infinite linear;
  font-weight: bolder;
  stroke: black;
  stroke-width: 2px;
  font-size: 4.5rem;
  /* margin: 0 10% 0 10%; */
}

.name h2{
  font-family: Arial, Helvetica, sans-serif;
  text-align: left;
  color: rgb(255, 255, 255);
}



.roleBox{
  margin-left: 200px;
  display: inline-flex;
}

.roleBox .text{
  position:relative;
  color: #fff;
  font-size: 25px;
  font-weight: 500;
  margin-right: 10px;
}

.text.sec-text:before{
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: black;
  border-left: 2px solid lime;
  animation: cursor .8s infinite, animate 4s steps(12) infinite;
}

@keyframes animate {
  40%, 60%{
    left: calc(100% + 4px);
  }
  100%{
    left: 0%;
  }
}

@keyframes cursor {
    to{
        border-left: 2px solid transparent;
    }
}

</style>