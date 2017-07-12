<template>
  <div>
    {{task.name}} - {{status}}
    <input type="checkbox" v-model="flag" @change="emitChange">
  </div>
</template>

<script>
export default {
  name: "TaskItem",
  props: ["task"],
  data() {
    return {
      flag: false
    }
  },
  computed: {
    status() {
      return this.task.done ? "Done" : "TODO"
    }
  },
  methods: {
    emitChange() {
      this.$emit("status-changed", this.flag);
    }
  }
}
</script>
