<template>
  <div class="TodoList">
    <ul>
      <li
      v-bind:key="index"
      v-for="(item, index) in tasks">
        <task-item
        v-on:status-changed="updateStatus(item)"
        :task="item"></task-item>
      </li>
    </ul>
  </div>
</template>

<script>
import TaskItem from "./task-item-component";

export default {
  name: "TodoList",
  components: {TaskItem},
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
    },
    updateStatus(item) {
      item.done = !item.done;
    }
  },
  mounted() {
    this.fetchTasks();
  }
}
</script>