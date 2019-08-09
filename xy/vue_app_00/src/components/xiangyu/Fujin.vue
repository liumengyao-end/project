<template>
<div class="fjdt">
   <span class="title_font">附近地图</span>
   <div  style="height:150px;padding:0 10px;">
      <div id="bg" style="height:60%;padding:30px;">
         <div style="height:66%;background:#fff;padding:15px;">
            <div class="inline on" v-if="list.length>0">
               <div class="smler_font" v-text="list[i].location"></div>
               <div class="smler_font"><span style="color:red">{{list[i].price}}元/月</span>起·在租<span>9</span>套</div>
               <div class="smler_font">距您<span v-text="distance">588</span>米</div>
            </div>
            <div class="inline tw">
                  <div>
                    <img src="../../assets/little/fangyuan-dituzhaofangicon.png">
                  </div> 
               <div class="little_text">地图搜周边</div>
            </div>
         </div>
      </div>
   </div>
</div>
</template>
<script>
export default {
   data(){
      return {
        list:[],
        i:0,
        distance:588,
      }
   },
   created(){
     var url="fujin";
     this.axios.get(url).then(result=>{
       this.list=result.data.data;
       //console.log(this.list);
     });
   },
   updated(){
     setInterval(()=>{
        this.i ++;
        if(this.i>14){
          this.i = 0;
        }
        this.distance = Math.ceil(Math.random()*8989);
     },5000);
   },
   methods:{

   }
}
</script>
<style>@import '../css/common.css';</style>
<style scoped>
.fjdt #bg{
   background-image:url("../../assets/little/ditu.jpg");
   background-repeat:no-repeat;
   background-size: 100% 100%;
}
#bg .inline{
   display:inline-block;
   height:100%;
}
#bg .on{
  width:67%;
  border-right:1px solid #ccc;
}
#bg .tw{
  width:32.5%;
  text-align:center;
}
#bg .inline img{
   width:27%;
}
#bg .smler_font{
  padding-bottom:4px;
}
.little_text{
   margin:5px 0;
}
</style>