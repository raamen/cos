<template lang="pug">
  #app
    p {{ message }}
</template>

<script lang="ts">
 export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
