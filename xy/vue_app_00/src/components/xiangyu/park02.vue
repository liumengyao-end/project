<template>
<div>
   <div class="page-head" style="position:relative;" >
      <img src="../../assets/resource/return.png" style="width:20px;position:absolute;left:5px;" @click="back">
      <span>相寓PARK</span>
   </div>
   <div class="flex_around">
      <div>
         <img class="park-img" src="../../assets/little/service_2.png">
         <p class="smler_font">休闲</p>
      </div>
      <div>
         <img class="park-img" src="../../assets/little/service_4.png">
         <p class="smler_font">服务</p>
      </div>
      <div>
         <img class="park-img" src="../../assets/little/joinus-ic3.png">
         <p class="smler_font">品质</p>
      </div>
      <div>
         <img class="park-img" src="../../assets/little/service_7.png">
         <p class="smler_font">配置</p>
      </div>
      <div>
         <img class="park-img" src="../../assets/little/service_5.png">
         <p class="smler_font">安全</p>
      </div>
   </div>
   <div>
      <div>
         <mt-swipe :auto="4000" class="park-change">
            <mt-swipe-item><img src="../../assets/pic/eleven12banner.jpg" ></mt-swipe-item>
            <mt-swipe-item><img src="../../assets/pic/parkarea2.jpg" ></mt-swipe-item>
         </mt-swipe>
      </div>
   </div>
   <h4>北京相遇PARK</h4>
   <div id="apart" v-for="(item,i) of list" :key="i">
      <div class="flats">
         <div class="canso">
            <div>
              <mt-swipe :auto="4000" class="change">
                <mt-swipe-item><img :src="item.url1" ></mt-swipe-item>
                <mt-swipe-item><img :src="item.url2" ></mt-swipe-item>
                <mt-swipe-item><img :src="item.url3" ></mt-swipe-item>
              </mt-swipe>
            </div>
         </div> 
         <div class="title">
            <span>{{item.village+`|相寓PARK.北京`}}</span>
            <span><span>{{item.price}} </span> 元/起</span>
         </div>
         <div class="little_text">{{item.location}}</div>
         <div>
            <span class="label">{{item.trait1}}</span>
            <span class="label">{{item.trait2}}</span>
            <span class="label">{{item.trait3}}</span>
         </div>
      </div>
   </div>
</div>
</template>
<script>
export default {
   data(){
      return {
         list:[
            {'url1':require("../../assets/pic/park03.png"),'url2':require("../../assets/pic/cafj14.jpg"),'url3':require("../../assets/pic/cafj19.jpg"),'village':'艺水芳园','price':'4700','location':'北京市朝阳区北花园街艺水芳园小区一号楼','trait1':'超大公区','trait2':'通透明亮','trait3':'观景阳台'},
            {'url1':require("../../assets/pic/xdfj27.jpg"),'url2':require("../../assets/pic/xdfj31.jpg"),'url3':require("../../assets/pic/xdfj29.jpg"),'village':'后代现代城','price':'3550','location':'北京市朝阳区后现代城A区18号楼','trait1':'时尚轻奢','trait2':'CBD','trait3':'极简工艺风'},
            {'url1':require("../../assets/pic/xdfj35.jpg"),'url2':require("../../assets/pic/xdfj39.jpg"),'url3':require("../../assets/pic/xdfj38.jpg"),'village':'回龙观mini','price':'3000','location':'北京市昌平区回龙观二拨子公交站','trait1':'北欧风','trait2':'户型方正','trait3':'贴心服务'},
         ],
      }
   },
   methods:{
      back(){
            this.$router.go(-1);
      },
   }
}

</script>
<style>
@import "../css/park.css";
</style>
<style scoped>
.park-change{
    width:95%;
    height:100px;
    margin: 0 auto;
}
.park-change img{
    width:100%;
    height:100%;
    border-radius:5px;
}
h4{
   padding:15px 10px;
   font-size:17px;
}
.flex_around>div{
   text-align:center;
   margin-bottom:25px;
   margin-top:53px;
}
.park-img{
   width:60%;
   height:36px;
}
.change{
   width:100%;
   height:200px;
   margin: 0 auto;
}
.change img{
    width:100%;
    height:100%;
    border-radius:15px;
}
#apart{
   margin-bottom:20px;
}
#apart .flats{
   width:87%;
   margin:0 auto;
   border-radius:10px;
   box-shadow:1px 1px 16px 1px #ccc;
   padding:12px;
}
#apart .flats .canso{
   width:100%;
   height:200px;
   margin:0 auto;
   margin-bottom:8px;
}
#apart .flats .canso img{
   border-radius:5px;
   width:100%;
   height:100%;
}
#apart .flats .title{
   display:flex;
   justify-content: space-between;
   line-height:1.2;
}
#apart .flats .title span:first-child{
    font-weight:bold;font-size:15px;
}
 #apart .flats .title span:not(:first-child){
   color:red;
   font-size:12px;
}
#apart .flats .title span:not(:first-child) span{
   font-size:14px;
}
#apart .flats .little_text{
   margin-bottom:5px;
}
.little_text{
   margin-bottom:0px;
   margin-top:5px;
}

</style>