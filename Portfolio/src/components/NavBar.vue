<template>
  <v-app-bar app color="transparent" style="position: fixed; top: 0;backdrop-filter: blur(8px);">
      <v-toolbar-title style="font-family: bigOver;color: white;margin-left: 50px;" @click="scroll('home')"> { R } </v-toolbar-title>
      <v-spacer></v-spacer>
      <div class="sections">
        <v-btn text class="navBtn"  @click="scroll('home')" disable-ripple>Home</v-btn>
        <v-btn text class="navBtn" @click="scroll('about')" disable-ripple>About</v-btn>
        <v-btn text class="navBtn" @click="scroll('projects')" disable-ripple>Projects</v-btn>
        <v-btn text class="navBtn" @click="scroll('contact')" disable-ripple>Contact</v-btn>
      </div>
      
    </v-app-bar>
</template>
  
<script>
export default {

methods: {
    scroll(refName){
        const element = document.getElementById(refName);
        element.scrollIntoView({behavior: 'smooth'});
    }
}
}
</script>
  
<style scoped>

.v-toolbar-title:hover{
  cursor: pointer;
}

.sections{
  margin-right: 30px;
}

.v-btn{
  font-family: Arial, Helvetica, sans-serif;
  font-weight: bold;
  color: #adabab;
  transition: 0.3s;
  text-transform: capitalize;
}

.navBtn:hover{
  color: #fff;
  margin-bottom: 10px;
}

</style>