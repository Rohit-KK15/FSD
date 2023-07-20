<template>
  <div style="background: linear-gradient(to bottom, #202020, #111119);;">
    <HomeView />
    <AboutView />
    <ProjectsView />
    <ContactView />
  </div>
</template>

<script>
import HomeView from './components/HomeView.vue';
import AboutView from './components/AboutView.vue';
import ProjectsView from './components/ProjectsView.vue';
import ContactView from './components/ContactView.vue';

export default {
  name: 'App',
  components: {
    HomeView,
    AboutView,
    ProjectsView,
    ContactView,
  }
};
</script>

<style scoped>


</style>