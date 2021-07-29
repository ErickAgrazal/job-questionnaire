<template>
  <FirstSolution v-bind:numbers="numbers"/>
</template>

<script>
  import FirstSolution from './components/FirstSolution.vue'

  const range = (size, startAt = 0) => { return [...Array(size).keys()].map(i => i + startAt) };

  export default {
    name: 'App',
    components: {
      FirstSolution,
    },
    data(){
      return {
        numbers: range(101, 3),
      }
    }
  }
</script>

<style>
</style>
