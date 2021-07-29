<template>
  <FirstSolution v-bind:numbers="numbers"/>
</template>

<script>
  import FirstSolution from './components/FirstSolution.vue'

  /*
   range. 
    Description: A function that given a size and an optional startAt
                 generates an array.
    @param size: size of the array.
    @param startAt: at which number should the array start.
    @returns array: an array of generated numbers.
   */
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
