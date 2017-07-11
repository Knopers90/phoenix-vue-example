<template>
  <div class="LoginForm">
    <form v-on:submit.prevent="onSubmit">
      <label>Email:</label>
      <input type="text" v-model="email"></input>
      <label>Password:</label>
      <input type="password" v-model="password"></input>
      <button type="submit">Login</button>
    </form>
  </div>
</template>

<script>
import authService from "../../services/auth-service.js";
export default {
  name: "Login",
  data() {
    return {
      email: "",
      password: ""
    }
  },
  computed: {
    credentials() {
      return {
        email: this.email,
        password: this.password
      }
    }
  },
  methods: {
    onSubmit() {
      authService.login(this, this.credentials, "/");
    }
  }
}
</script>