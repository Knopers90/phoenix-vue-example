<template>
  <div>
    <a href="#" @click="logout">Logout</a> 
    <router-view></router-view>  
  </div>
</template>

<script>
import authService from "../services/auth-service.js"
export default {
  name: 'PanelLayout',
  methods: {
    logout() {
      authService.logout();
    }
  }
}

</script>
