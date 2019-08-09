<template>
<div>
   <div class="area flex_around">
      <div id="home">
         <div id="home-img"  @click="rent_sharing">
            <img style="width:100%;height:100%;" src="../../assets/little/home_img.png">
         </div>
         <span>HOME整租</span>
      </div>
      <div  id="room">
         <div id="room-img" @click="rent_sharing">
            <img style="width:100%;height:100%;" src="../../assets/little/room_img.png">
         </div>
         <span>ROOM合租</span>
      </div>
      <div  id="park">
         <div id="park-img" @click="more">
            <img style="width:100%;height:100%;" src="../../assets/little/park_img.png">         
         </div>
         <span>PARK公寓</span>
      </div>
      <div  id="inni">
         <div id="inni-img"  @click="rent_sharing">
            <img style="width:100%;height:100%;" src="../../assets/little/inni_img.png">
         </div>
         <span>INNI酒店</span>
      </div>
   </div>
   <div class="pop flex_around">
      <div class="popImg1">
         <div>
            <span class="lit_font">降价专区</span>
            <span class="smler_font">租金立减，品质不变</span>
         </div>
      </div>
      <div class="popImg2">
         <div>
            <span class="lit_font">抄底特惠</span>
            <span class="smler_font">机遇难得，值得拥有</span>
         </div>
      </div>
      <div class="popImg3">
         <div>
            <span class="lit_font">精品房源</span>
            <span class="smler_font">平台交易，安全保障</span>
         </div>
      </div>
      <div class="popImg4">
         <div>
            <span class="lit_font">热门房源</span>
            <span class="smler_font">陪你发现心中的家</span>
         </div>
      </div>
   </div>
</div>
</template>
<script>
   export default{
      data(){
         return {}
      },
      methods:{
         more(){
            this.$router.push("/park02");
         },
         rent_sharing(){
            this.$router.push("/rent_sharing")
         }
      }
   }
</script>
<style>@import '../css/common.css';</style>
<style scoped>
.area{
   padding:10px;
}
.area span{
   font-size:12px;
}
#home,#room,#park,#inni{
   text-align:center;
}
.area #home>#home-img,.area #room>#room-img,.area #park>#park-img,.area #inni>#inni-img{
   border-radius:12px;
   width:22%;
   height:23px;
   margin:0 auto;
   padding:10px;
}
.area #home>#home-img{
   background-image:linear-gradient(to top,#811db9,#d9abf675);
}
.area #room>#room-img{
   background-image:linear-gradient(to top,#efaa45f0,#ff980045);
}
.area #park>#park-img{
   background-image:linear-gradient(to top,#ea281ae3,#f4433657);
}
.area #inni>#inni-img{
   background-image:linear-gradient(to top,#3f51b5f0,#2196f385);
}
.pop{
   flex-wrap:wrap;
}
.lit_font{
   display:block;
   margin-left:5px;
   font-weight:bold;
}
.smler_font{
   margin-left:5px;
}
.pop{
   padding:10px 10px;
}
.pop .popImg1,.pop .popImg2,.pop .popImg3,.pop .popImg4{
   width:43%;
   height:80px;
   background-image:url('../../assets/pic/meefkigf94d682fa.jpg');
   background-repeat:no-repeat;
   background-size:100% 100%;
   border-radius:7px;
   margin-bottom:10px;
}
.pop .popImg2{
   background-image:url('../../assets/pic/gfnnplpg571515cc.jpg');
}
.pop .popImg3{
   background-image:url('../../assets/pic/index_park_ysfy.png');
}
.pop .popImg4{
   background-image:url('../../assets/pic/qlfj14.jpg');
}
.pop .popImg1 div,.pop .popImg2 div,.pop .popImg3 div,.pop .popImg4 div{
   height:70px;
   padding-top:10px;
   background-image:linear-gradient(to bottom, #f5f5f5, #fff, #fff0);
   border-radius:7px;
}
</style>