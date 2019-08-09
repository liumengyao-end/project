<template>
    <div id="d1" >
        <!--搜索框-->
        <div>
            <form action="javascript:void 0">
                <input type="search" placeholder="请输入小区/商圈/地铁站等" class="small_font" @keyup="show($event)" v-model="txtInput">
            </form>
            
            <span class="mid_font float_left" @click="back">取消</span>
        </div>
        <!--热门搜索-->
        <div class="flex_between lookup">
            <span class="title_font">热门搜索</span>
            <img src="../../assets/resource/shuaxin.png">
        </div>
        <!--热门内容-->
        <div class="hot_look">
            <span class="btn" v-for="(elem,i) of lookups":key="i" v-text="elem"></span>
        </div>
            <!--历史记录-->
        <div class="flex_between history" >
            <span class="title_font">历史记录</span>
            <img src="../../assets/resource/05.png" @click="del">
        </div>
        <!--历史内容-->
        <div class="his_del" v-for="(item,i) of history":key="i">
            <img src="../../assets/resource/weizhi.png">
            <span class="lit_font" >{{item.hname}}</span>
        </div>
        
    </div>
</template>
<script>
    export default {
        data(){
            return{
                txtInput:"",
                lookups:["回龙观","望京","天通苑","西三旗","太阳宫"],
                history:[],
            }
        }, 
        created(){
            this.loadMore();
                  
        },
       updated(){
        },
        methods:{
             del(){
                var url="del";
                this.axios.get(url).then(result=>{
                    this.loadMore();
                }) 
            },
            back(){
                this.$router.go(-1);
            },
            loadMore(){
                var url="addhistory";
                this.axios.get(url).then(result=>{
                    if(result.data.data.length>=1){
                        this.history=result.data.data;
                    }
                })
            },
            show(ev){
               var hname=this.txtInput;
                if(ev.keyCode==13){
                   //将搜索数据添加到历史记录中
                   if(this.txtInput!=""){
                       var url="lookup";
                       var obj={hname};
                       //console.log(obj);
                       this.axios.get(url,{params:obj}).then(result=>{
                           //console.log(result);
                       });
                        this.$router.push("/rent_sharing");
                   }
                }
            }
        }
    }
</script>
<style>
    @import '../css/common.css';
</style>
<style scoped>
    #d1{
        padding:10px;
    }
    form{
        margin-right:20px;
        width:100%;
    }
    .float_left{
    position:absolute;
        top:15px;
        right:18px;
    }
    input{
        background:#ddd url("../resource/fangdajing.png") no-repeat 3% center;
        background-size:20px 20px;
        padding-left:35px;
        border:0;
        border-radius:5px;
        width:80%;
        height:30px;
        outline:0;
        
        caret-color:#906bc8;
    }
    .lookup,.history{margin-top:30px;}
    .flex_between>img{
        width:20px;
        height:20px;
    }
    .hot_look{
        display:flex;
        justify-content:start;
        padding:10px;
        flex-wrap:wrap;
    }
    span.btn{
        color:#999;
        width:20%;
        margin-top:15px;
        margin-right:15px;
    }
    .his_del{
        padding:15px 5px;
        border-bottom:1px solid #ddd;
        margin-top:10px;
    }
    .his_del>img{
        width:15px;
        height:15px;
        margin-right:20px;
    }
</style>