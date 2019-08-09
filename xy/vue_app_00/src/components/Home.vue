<template>
<div class="xy_container">
   <div class="page_wrap">
      <!--面板 1父面板 5子面板-->
      <mt-tab-container v-model="active">
         <!--首页面板-->
         <mt-tab-container-item id="index">
         <div class="index">
            <indextitle></indextitle>
            <carousel :imgurl="require('../assets/pic/banner-1.png')" :imgurl1="require('../assets/pic/banner-2.png')"></carousel>
            <spearea></spearea>
            <fujin></fujin>
            <homezz></homezz>
            <room></room>
            <park></park>
            <story></story>
         </div>
         </mt-tab-container-item>
         <!--业主委托面板-->
         <mt-tab-container-item id="entru">
            <yezhu></yezhu>
         </mt-tab-container-item>
         <!--消息面板-->
         <mt-tab-container-item id="message">
            <messagelists></messagelists>
         </mt-tab-container-item>
         <!--我的面板-->
         <mt-tab-container-item id="mine">
           <mypage></mypage>
         </mt-tab-container-item>
      </mt-tab-container>
      <!--底部导航栏-->
      <mt-tabbar v-model="active" fixed>
         <mt-tab-item id="index">
            <tabbaricon :selectedImage="require('../assets/little/index.png')" :normalImage="require('../assets/little/index2.png')"  :focused="active=='index'"></tabbaricon>
            <span>首页</span>
         </mt-tab-item>
         <mt-tab-item id="entru">
            <tabbaricon :selectedImage="require('../assets/little/entru.png')" :normalImage="require('../assets/little/entru2.png')" :focused="active=='entru'"></tabbaricon>
            <span>业务委托</span>
         </mt-tab-item>
         <mt-tab-item id="message">
            <tabbaricon :selectedImage="require('../assets/little/message.png')" :normalImage="require('../assets/little/message2.png')" :focused="active=='message'"></tabbaricon>
            <span>消息</span>
         </mt-tab-item>
         <mt-tab-item id="mine">
            <tabbaricon :selectedImage="require('../assets/little/mine.png')" :normalImage="require('../assets/little/mine2.png')" :focused="active=='mine'"></tabbaricon>
            <span>我的</span>
         </mt-tab-item>
      </mt-tabbar>
   </div>
</div>
</template>
<script>
   import TabBarIcon from "./xiangyu/TabBarIcon.vue";
   import Yezhu from "./xiangyu/Yezhu.vue";
   import SpeArea from "./xiangyu/SpeArea.vue";
   import Fujin from "./xiangyu/Fujin.vue";
   import Homezz from "./xiangyu/Homezz.vue";
   import Room from "./xiangyu/Room.vue";
   import Park from "./xiangyu/Park.vue";
   import Story from "./xiangyu/Story.vue";
   import Index_title from "./xiangyu/Index_title.vue";
   import mypage from "./xiangyu/mypage.vue";
   import MessageLists from "./xiangyu/MessageLists.vue";
   import carousel from "./xiangyu/carousel.vue";   
   export default {
      data(){
         return {
            active:"index",
            session:0
         }
      },
      methods:{   
        passPage(){
           var url="msg"
            this.axios.get(url).then(result=>{
                if(result.data.code>0){
                    this.$router.push("/login")
                }
            })
        },    
      },
      components:{
         "tabbaricon":TabBarIcon,
         "yezhu":Yezhu,
         "spearea":SpeArea,
         "fujin":Fujin,
         "homezz":Homezz,
         "room":Room,
         "park":Park,
         "story":Story,
         "indextitle":Index_title,
         "mypage":mypage,
         "messagelists":MessageLists,
         "carousel":carousel,
      }
   }
</script>
<style>@import './css/common.css';</style>
<style>
   *{
      margin:0;
      padding:0;
   }
   .xy_container{
      overflow:hidden !important;
   }
   .xy_container .index{
      padding:53px 0px 80px 0px;
   }
   .page-wrap{
      overflow:auto;/*溢出显示滚动条*/
      padding-bottom:45px !important;
   }
   /*修改tabbar默认的颜色*/
   .mint-tab-item-label span{
      font-family:"隶书" !important;
   }
   .mint-tabbar>.mint-tab-item{
      color:#999 !important;
   }
   .mint-tabbar>.mint-tab-item.is-selected{
      color:#906bc8 !important;
      background-color:transparent !important;
   }
</style>