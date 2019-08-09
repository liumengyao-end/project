<template>
<div class="homezz">
   <span class="title_font">相寓ROOM · 整租</span>
   <div id="rezu">
      <div id="cmar" class="flex_around">
         <div v-for="(item,i) in list" :key="i"  >
            <img :src="item.imgurl" @click="change" :data-name="item.name">
            <div>
               <div class="lit_font">{{item.stitle}}</div>
               <span class="little_text"  v-text="item.desc"></span>
            </div>
            <div class="lab little_tag">{{item.lab}}</div>
         </div>
      </div>
   </div>
   <div class="btm">
      <div class="btn lit_font"><span>更多整租</span>&nbsp;&nbsp;&nbsp;<span>></span></div>
   </div>
</div>
</template>
<script>
export default {
   data(){
      return {
         list:[
            {"imgurl":require("../../assets/pic/park03.png"),"stitle":"你的独立日","desc":"一人畅享 拒绝束缚","lab":"一居","id":1,"name":"whole_rent1"},
            {"imgurl":require("../../assets/pic/meefkigf94d682fa.jpg"),"stitle":"就爱宅一起","desc":"生活相伴 完整体验","lab":"两居","id":2,"name":"whole_rent2"},
            {"imgurl":require("../../assets/pic/dyfj20.jpg"),"stitle":"都市幸福家","desc":"温暖时刻 欢乐满屋","lab":"三居","id":3,"name":"whole_rent3"},
            {"imgurl":require("../../assets/pic/index_park_bj63k.png"),"stitle":"美好租家生活","desc":"宽敞通透 尽情挥洒","lab":"四居","id":4,"name":"whole_rent4"},
         ],
         rent:"",
         whole:[]
        
      }
   },
   methods:{
       change(e){
           this.rent=e.target.dataset.name;
           var rent=this.rent;
            console.log(rent)
           var url="rent";
           var obj={rent:rent}
           //console.log(obj)
           this.axios.get(url,{params:obj}).then(result=>{
               //console.log(result);
                this.whole=result.data.data;
               // console.log(this.whole);
                var a=this.whole;
               a=JSON.stringify(a)
               //console.log(a);
                sessionStorage.setItem("whole",a)
                this.$router.push("/rent_sharing")
           })
       }
   }
}
</script>
<style>@import '../css/common.css';</style>
<style scoped>
.homezz .flex_around{
   flex-wrap:wrap;
   padding:0 5px;
}
.homezz .flex_around>div{
   padding-top:5px;
   display:flex;
   flex-direction:column;
   width:48%;
   height:140px;
   position:relative;
}
.homezz .flex_around>div img{
   margin:0 auto;
   width:90%;
   height:60%;
   border-radius:5px;
}
.homezz .flex_around>div>div{
   padding:10px 0 0 10px;
}
.homezz .flex_around .lab{
   position:absolute;
   top:12px;
   left:18px;
   padding:2px 5px;
}
.homezz .btm{
   padding:10px 10px;
   display:flex;
   justify-content: space-around;
   align-items:center;
   flex-wrap:nowrap;
}
.homezz .little_text{
   margin-bottom:0px;
   margin-top:5px;
}
.homezz .btn>span>img{
   margin-left:8px;
   margin-bottom:-2px;
}
</style>