import router from '../router'

export default {

  login(context, creds, redirect) {
    if (creds.email == "example@example.com" && creds.password == "password") {
      localStorage.setItem("currentUser", creds);
      router.push("/")
    } else {
      alert("Invalid credentials");
    }
  },

  logout(context) {
    localStorage.removeItem('currentUser');
    router.push('/auth/login')
  },

  loggedIn() {
    return !!localStorage.getItem("currentUser");
  }
}
