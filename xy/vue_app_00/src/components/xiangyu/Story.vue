<template>
<div>
   <span class="title_font">寓家风采 · STORY</span>
   <div class="flex_around">
      <div v-for="(item,i) in list" :key="i">
         <img :src="item.imgurl">
         <div class="smler_font" v-text="item.stitle"></div>
      </div>
   </div>
   <div class="btm">
      <div class="btn lit_font"><span>查看更多</span>&nbsp;&nbsp;&nbsp;<span>></span></div>
   </div>
</div>
</template>
<script>
export default {
   data(){
      return {
         list:[
            {"imgurl":require("../../assets/pic/img.jpg"),"stitle":"租客猫猫：有趣的灵魂在这里"},
            {"imgurl":require("../../assets/pic/marrybanner.jpg"),"stitle":"北票十年，最后嫁给了那个帮我找到房子的男生……"},
            {"imgurl":require("../../assets/pic/lifebanner-1.jpg"),"stitle":"今天，她们要公开自己的人生大事!"},
            {"imgurl":require("../../assets/pic/index_life_img2.png"),"stitle":"生活就像一盒巧克力，要努力找到最好吃的那颗！"},
         ]
      }
   }
}
</script>
<style>@import '../css/common.css';</style>
<style scoped>
.flex_around{
   flex-wrap:wrap;
   padding:0 5px;
}
.flex_around>div{
   padding-top:5px;
   display:flex;
   flex-direction:column;
   width:48%;
   height:140px;
}
.flex_around>div img{
   margin:0 auto;
   width:90%;
   height:60%;
   border-radius:5px;
}
.flex_around>div div{
   padding: 10px 0 0 10px;
}
.btm{
   padding:0 10px;
}
</style>