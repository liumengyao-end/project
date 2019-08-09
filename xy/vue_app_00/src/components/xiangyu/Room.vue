<template>
<div class="room">
   <span class="title_font">相寓ROOM · 合租</span>
   <div id="rezu">
      <div id="cmar" class="flex_around" :class="this.show ? 'cmarg' : ''">
         <div v-for="(item,i) in list" :key="i" >
            <img :src="item.imgurl" @click="rent_list" :data-name="item.stitle">
            <div>
               <div class="lit_font">热租商圈 | {{item.stitle}}</div>
               <span class="little_text"  v-text="item.desc"></span>
            </div>
         </div>
      </div>
   </div>
   <div class="btm">
      <div class="btn small_font">
         <span @click="rent_sharing">更多合租</span>
         <span>
            <img style="width:8%;padding-bottom:-10px;"src="../../assets/little/gt.png">
         </span>
      </div>
      <div class="btn small_font" @click="changem">
            <span>换一换</span>
            <span>
               <img style="width:8%;padding-bottom:-10px;" src="../../assets/little/xz.png">
            </span>
      </div>
   </div>
</div>
</template>
<script>
export default {
   data(){
      return {
         list:[
            {"imgurl":require("../../assets/pic/xdzb16.jpg"),"stitle":"回龙观","desc":"互联网从业者的首选"},
            {"imgurl":require("../../assets/pic/pgzb2.jpg"),"stitle":"北苑","desc":"科技新贵 美食遍地"},
            {"imgurl":require("../../assets/pic/leisure1-1.png"),"stitle":"CBD","desc":"精彩不断 乐享生活"},
            {"imgurl":require("../../assets/pic/leisure1.png"),"stitle":"立水桥","desc":"亚洲最大生活社区"},
            {"imgurl":require("../../assets/pic/hmzb2.jpg"),"stitle":"西三旗","desc":"互联网从业者首选"},
            {"imgurl":require("../../assets/pic/leisure1-1.png"),"stitle":"天通苑","desc":"科技新贵 精彩不断"},
            {"imgurl":require("../../assets/pic/pgzb1.jpg"),"stitle":"朝阳大悦城","desc":"精彩不断 美食遍地"},
            {"imgurl":require("../../assets/pic/hmzb3.jpg"),"stitle":"望京","desc":"科技新贵 乐享生活"},
         ],
         show:false
      }
   },
   methods:{
      changem(){
         var cmar = document.getElementById("cmar");
         if(!this.show){
            this.show = true;
         }else{
            this.show = false;
         }
      },
      rent_sharing(){
            this.$router.push("/rent_sharing")
      },
      rent_list(e){
            var local=e.target.dataset.name;
            console.log(local)
            var url="rent_share";
            local=JSON.stringify(local);
            var obj={local:local}
            this.axios.get(url,{params:obj}).then(result=>{
                  this.rent=result.data.data;
                  var rent=this.rent;
                  console.log(rent)
                  rent=JSON.stringify(rent);
                  sessionStorage.setItem("whole",rent)
                  this.$router.push("/rent_sharing")
            })
      }
   }
}
</script>
<style>@import '../css/common.css';</style>
<style scoped>
#rezu{
   height:290px;
   overflow:hidden;
}
.cmarg{
   margin-top:-290px;
}
.room .flex_around{
   flex-wrap:wrap;
   padding:0 5px;
}
.room .flex_around>div{
   padding-top:5px;
   display:flex;
   flex-direction:column;
   width:48%;
   height:140px;
}
.room .flex_around>div img{
   margin:0 auto;
   width:90%;
   height:60%;
   border-radius:5px;
}
.room .flex_around>div>div{
   padding:10px 0 0 10px;
}
.room .btm{
   padding:10px 10px;
   display:flex;
   justify-content: space-around;
   align-items:center;
   flex-wrap:nowrap;
}
.room .btn{
   width:46%;
}
.room .little_text{
   margin-bottom:0px;
   margin-top:5px;
}
.room .btn>span>img{
   margin-left:8px;
   margin-bottom:-2px;
}
</style>