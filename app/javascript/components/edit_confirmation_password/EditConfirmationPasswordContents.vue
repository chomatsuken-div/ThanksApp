<template>
  <center class="thanks-index">
    <div class="thanks-index-message">
      <div class="index-message-image">
        <img src="~Surprisethanks.png" alt="Suprisethanks.png">
      </div>
    </div>
    <div class="index-contents">
      <EditConfirmationPasswordForm></EditConfirmationPasswordForm>
    </div>
  </center>
</template>

<script>
import 'zibunno.png'
import 'send.png'
import 'minnano.png'
import 'Surprisethanks.png'
import EditConfirmationPasswordForm from 'components/edit_confirmation_password/EditConfirmationPasswordForm.vue';


export default {
  data: function(){
    return {
    }
  },
  components: { EditConfirmationPasswordForm },
  methods: {
  }
}
</script>

<style scoped>
  .thanks-index{
    width: 80%;
    margin: 0 auto;
    font-size: 14px;
    font-family: Noto Sans CJK JP;
  }
  .index-message-middle {
    margin-top: 20px;
  }
  .index-message-middle h2{
    font-size: 36px;
    letter-spacing: 0.2em;
    margin-bottom: 20px;
}
  .middle-article{
    letter-spacing: 0.15em;
  }
  .index-contents{
    display: flex;
    justify-content: center;
    
  }
  .index-content{
    width: 33%;
  }

</style>
