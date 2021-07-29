<template>
  <div>
    <h1>First Solution</h1>
    <h2>Question: </h2>
    <p>
      Write a vue (preferred) or react component that lists the following in an unordered list:
     <ul>
       <li>Cycle through the numbers 3 - 103</li>
       <li>When the current number is evenly divisible by 3, output "three"</li>
       <li>When the current number is evenly divisible by 5, output "five"</li>
       <li>When the current number is evenly divisible by both 3 and 5, output “three and five”</li>
       <li>When the current number is not divisible by 3 or 5, don’t show it in the list</li>
     </ul>
    </p>
    <hr>
    <h2>Answer:</h2>
    <ul v-for="(number, x) in numbers" :key="x">
      <div v-if="display(number)">
        <li>{{display(number)}}</li>
      </div>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'FirstSolution',
  props: {
    numbers: {
      type: Array
    }
  },
  methods: {
    display(number) {
      if (number % 3 === 0 && number % 5 === 0) return "three and five";
      if (number % 3 === 0) return "three";
      if (number % 5 === 0) return "five";
      return false;
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
