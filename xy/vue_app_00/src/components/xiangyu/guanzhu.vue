<template>
<div>

<div class="kuai" >
   <div class="flex_between" v-for="(item,i) in list" :key="i">
      <div>
         <img :src="item.img_url0" style="width:120px;height:75px;border-radios:5px">
      </div>
      <div style="margin-right:55px;">
         <p>{{item.village}}</p>
         <p class="small_font pad">￥ {{item.price}}元/月 (押一付三)</p>
         <p style="color:#b4b1b1" class="smler_font pad">{{item.housetype}}  |  {{item.area}}m² | {{item.orient}}</p>
         <p style="color:#b4b1b1" class="smler_font pad">可签约至：2020-07-05</p>
      </div>
      <div>
         <p style="margin-bottom:-20px;color:#ffbf00;" class="small_font">待租</p>
      </div>
   </div>
</div>
</div>
</template>
<script>
   export default {
      data(){
         return {
            list:[]
         }
      },
      created(){
         var url = "guanzhu";
         this.axios.get(url).then(result=>{
            if(result.data.code>0){
               this.list=result.data.data;
            }
         })
      },
      methods:{
         
      }
   }
</script>
<style>@import '../css/common.css';</style>
<style scoped>
   .kuai{
      padding:5px;
      margin-bottom:10px;
   }
   .pad{
      padding-top:5px;
   }
</style>