<template>
  <div class="TodoList">
    <ul>
      <li
      v-bind:key="index"
      v-for="(item, index) in tasks">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: "Example",
  props: [],
  data() {
    return {
      tasks: [
        { name: "buy some milk", done: false },
        { name: "clean your room", done: false },
        { name: "dishes!", done: false }
      ]
    }
  },
  computed: {
  },
  methods: {
    fetchTasks() {
      this.$http.get("/api/tasks", {}).then(
        (response) => {
          this.tasks = response.data.tasks;
        },
        (error) => {
          alert("Oops! Something went wrong!");
        }
      )
    }
  },
  mounted() {
    this.fetchTasks();
  }
}
</script>