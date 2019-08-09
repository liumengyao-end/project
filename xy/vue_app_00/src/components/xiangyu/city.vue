<template>
    <div>
        <div class="fixed flex_between">
            <img src="../../assets/resource/fanhui.png" @click="back">
            <span class="big_font">城市</span>
            <span>  </span>
        </div>
        <div style="height:50px;"></div>
        <div>
            <span class="title_font">当前城市</span>
            <div class="flex_between">
                <div class="btn" ><span>北京</span></div>
                <div class="flex_between">
                    <img src="../../assets/resource/shuaxin.png">
                    <span class="lit_font local" @click="circle">重新定位</span>
                </div>
            </div>
        </div>
        <div>
            <span class="title_font citys">所有城市</span>
            <div v-for="(city,i) of citys":key="i" class="city lit_font" @click="index">
                <!-- 城市名称 循环-->
                <span v-text="city.name"  :id="city.id"  ></span>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                citys:[{name:"北京" ,id:1},{name:"杭州" ,id:2},{name:"苏州" ,id:3},{name:"上海" ,id:4},{name:"太原" ,id:5},{name:"天津", id:6},{name:"南京", id:7},{name:"郑州", id:8},{name:"成都" ,id:9},{name:"无锡", id:10},{name:"南宁", id:11},{name:"武汉", id:12}],
            }
        },
       mounted(){
           
       },
       methods:{
           back(){
                this.$router.go(-1);
            },
           index(e){
               var n=e.target;
               var city=n.innerHTML;
               this.localtion=document.querySelectorAll("span")[3];
               this.localtion.innerHTML=city;
            },
            circle(){
                this.image=document.querySelectorAll("img")[1];
                this.image.className="rotate";
                setTimeout(()=>{
                    this.image.className="";
                },500)
                
            }
       },
        
    }
</script>
<style>
    @import '../css/common.css';
</style>
<style scoped>
    .flex_between{
        padding:0 4px;
    }
    img{
        width:24px;
        height:20px;
    }
    .rotate{
        transform: rotate(720deg);
        transition: linear 0.5s;
        
    }
    .fixed{
        position:fixed;
        top:0;
        padding:8px 5px;
        background:#fff;
    }
    .big_font{
        color:#000;
        margin:0 130px;
    }
    .btn{
        width:18%;
    }
    .local{
        color:rgba(230,140,12,0.5);
        margin-left:5px;
    }
    .citys{
        margin:10px 0;
    }
    .city{
        padding:15px 5px;
        border-bottom:1px solid #ddd;
    }
</style>