<template>
  <form v-on:submit.prevent="onSubmit">
    <input type="text" v-model="taskName"></input>
    <button type="submit">Add</button>
  </form>
</template>

<script>
export default {
  name: "newTaskForm",
  data() {
    return {
      taskName: ""
    }
  },
  methods: {
    onSubmit() {
      this.$emit("new-task", this.taskName);
      this.taskName = "";
    }
  }
}
</script>
