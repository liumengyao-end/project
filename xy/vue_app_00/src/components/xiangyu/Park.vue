<template>
<div class="park">
   <span class="title_font">相寓PARK · 集中式长租公寓</span>
   <div id="apart">
      <div class="flats" v-if="list.length>0">
         <div class="canso" @click="login">
            <div>
              <mt-swipe :auto="4000" class="change">
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+list[i].img_url0" ></mt-swipe-item>
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+list[i].img_url1" ></mt-swipe-item>
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+list[i].img_url2" ></mt-swipe-item>
              </mt-swipe>
            </div>
         </div> 
         <div class="title">
            <span>PARK公寓 | {{list[i].village}}</span>
            <span><span>{{list[i].price}} </span> 元/起</span>
         </div>
         <div class="little_text">{{list[i].location}}</div>
         <div>
            <span class="label">{{list[i].trait1}}</span>
            <span class="label">{{list[i].trait2}}</span>
            <span class="label">{{list[i].trait3}}</span>
         </div>
      </div>
   </div>
   <div class="btm">
      <div class="btn small_font">
         <span @click="more">更多公寓</span>
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
         list:[],
         i:0,
      }
   },
   created() {
      var url="park";
      this.axios.get(url).then(result=>{
         this.list=result.data.data;
     //console.log(this.list);
     });
   },
   methods:{
      changem(){
         this.i ++;
         if(this.i>3){
            this.i = 0;
        }
      },
      more(){
        this.$router.push("/park02");
      },
      login(){
        this.$router.push("/park01");
      }
   }
}
</script>
<style>@import '../css/common.css';</style>
<style scoped>
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
.park #apart .flats{
   width:87%;
   margin:0 auto;
   border-radius:10px;
   box-shadow:1px 1px 16px 1px #ccc;
   padding:12px;
}
.park #apart .flats .canso{
   width:100%;
   height:200px;
   margin:0 auto;
   margin-bottom:8px;
}
.park #apart .flats .canso img{
   border-radius:5px;
   width:100%;
   height:100%;
}
.park #apart .flats .title{
   display:flex;
   justify-content: space-between;
   line-height:1.2;
}
.park #apart .flats .title span:first-child{
    font-weight:bold;font-size:15px;
}
.park #apart .flats .title span:not(:first-child){
   color:red;
   font-size:12px;
}
.park #apart .flats .title span:not(:first-child) span{
   font-size:14px;
}
.park #apart .flats .little_text{
   margin-bottom:5px;
}
.park .btm{
   padding:10px 10px;
   display:flex;
   justify-content: space-around;
   align-items:center;
   flex-wrap:nowrap;
}
.park .btn{
   width:46%;
}
.park .little_text{
   margin-bottom:0px;
   margin-top:5px;
}
.park .btn>span>img{
   margin-left:8px;
   margin-bottom:-2px;
}
</style>