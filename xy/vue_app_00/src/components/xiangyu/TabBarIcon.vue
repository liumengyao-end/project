<template>
   <div>
      <img :src="focused ? selectedImage : normalImage" class="imgStyle">
   </div>
</template>
<script>
   export default {
      data(){
         return{}
      },
      props:{
         focused:false,
         selectedImage:{default:""},
         normalImage:{default:""}
      }
   }
</script>
<style>
   .imgStyle{
      width:22px;
      height:22px;
   }
</style>