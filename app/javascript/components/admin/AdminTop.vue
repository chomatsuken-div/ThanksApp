<!--<template>
  <div id="app" class="container">
    <Header header-nav="Mypage" mypage-nav="group"></Header>
    <AdminContents></AdminContents>
  </div>
</template>

<script>
import axios from 'axios'
import Header from '../shared/Header.vue';
import AdminContents from '../admin/AdminContents.vue';

export default {
  components: {
    Header, AdminContents
  },
  data: function () {
    return {
    }
  },
  mounted:function(){
    axios.defaults.headers.common = {
      'X-Requested-With': 'XMLHttpRequest',
      'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    };
  },
}
</script>

<style scoped>
.container {
  display: flex;
}
header {
  width: 35%;
  height: 100vh;
  background-color: #fff;
  display: flex;
}
/* nav{
  width: 20%;
  height: 100vh;
  background-color: #EDEDED;
} */
</style>
