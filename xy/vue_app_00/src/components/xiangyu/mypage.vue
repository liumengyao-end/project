<template>
    <div id="mypage">
        <!--页头 切换为业主-->
        <div class="fixed flex_between">
            <div>
                <img src="../../assets/resource/jiaohuan.png">
                <p>切换为业主</p>
            </div>
            <div>
                <img src="../../assets/resource/kefu.png">
            </div>
        </div>
        <!--登录注册 -->
        <div class="flex_between">
            <div class="flex_login">
                <p v-if="session==0"><span @click="login">登录</span>/<span>注册</span></p>
                <p v-else><span v-model="user">{{user}}</span></p>
                <p>点击编辑个人资料</p>
            </div>
            <div class="flex_avatar">
            </div>
            
        </div>
        <!--tab小标签-->
        <div class="flex_around">
            <div class="flex_tab">
                <div>
                    <img src="../../assets/resource/renzheng.png">
                </div>
                <p>我的认证</p>
            </div>
            <div class="flex_tab">
                <div @click="guanzhu">
                    <img src="../../assets/resource/guanzhu.png">
                </div>
                <p>我的关注</p>
            </div>
            <div class="flex_tab">
                <div>
                    <img src="../../assets/resource/yuekan.png">
                </div>
                <p>我的约看</p>
            </div>
            <div class="flex_tab">
                <div>
                    <img src="../../assets/resource/hongbao.png">
                </div>
                <p>我的红包</p>
            </div>
        </div>
        <!--轮播图-->
        <div>
            <div>
                <mt-swipe :auto="4000" class="change">
                    <mt-swipe-item><img src="../../assets/pic/eleven12banner.jpg" ></mt-swipe-item>
                    <mt-swipe-item><img src="../../assets/pic/parkarea2.jpg" ></mt-swipe-item>
                </mt-swipe>
            </div>
        </div>
        <!--我的家-->
        <div>
            <span class="title_font">我的家</span>
            <div class="flex_around">
                <!--4个-->
                <div v-for="(elem,i) of list":key="i" class="flex_home">
                    <img :src="list[i].pic">
                    <p v-text="list[i].name"></p>
                </div>
            </div>
        </div>
        <!--底部服务-->
        <div>
            <ul>
                <li class="flex_between">
                    <span>付费宽带</span>
                    <span>></span>
                </li>
                <li  class="flex_between">
                    <span>企业权益</span>
                    <span>></span>
                </li>
                <li  class="flex_between">
                    <span>客户服务</span>
                    <span>></span>
                </li>
                <li  class="flex_between">
                    <span>更多</span>
                    <span>></span>
                </li>
            </ul>
        </div>
    </div>
   
</template>
<script>
    export default {
        data(){
            return{
                list:[
                    {pic:require('../../assets/resource/hetong.png'),name:"我的合同",src:"hetong"},
                    {pic:require("../../assets/resource/mensuo.png"),name:"智能锁门",src:"suomen"},
                    {pic:require("../../assets/resource/baoxiu.png"),name:"在线报销",src:"baoxiao"},
                    {pic:require("../../assets/resource/dingdan.png"),name:"我的订单",src:"dingdan"},
                ],
                session:0,
                user:''
            }
        },
        created() {
            var url="mypage"
            this.axios.get(url).then(result=>{
               if(result.data.code>0){
                    this.session=1;
                    this.user=result.data.user;
                    //console.log(result)
                }
            })
        },
        methods:{
            login(){
                this.$router.push("/login")
            },
            guanzhu(){
                this.$router.push("/guanzhu")
            }
        }
    }
</script>
<style>
    @import '../css/common.css';
</style>
<style scoped>
    .flex_around{
        margin-bottom:15px;
    }
    .change{
    width:95%;
    height:100px;
    margin: 0 auto;
}
.change img{
    width:100%;
    height:100%;
    border-radius:5px;
}
    #mypage{
        padding:10px 10px 50px 10px;
    }
    #mypage ul{
        list-style:none;
        margin:20px 0;
        padding:10px 0px;
        }
   #mypage .fixed{
       position:fixed;
       top:0;
       font-size:14px;
       text-align:center;
       line-height:2;
       width:95%;
       background:#fff; 
       padding:5px 0px 0px 0px;
   }
   #mypage .fixed div:first-child{
       display:flex;
       justify-content:space-between;
   }
   #mypage .fixed img{
       width:28px;
       height:25px;
   }
   #mypage .fixed div:not(:first-child) img{
       margin-top:4px;
   }
   #mypage .flex_between>.flex_login{
       margin-top:50px;
   }
   #mypage .flex_between>.flex_login>p:first-child{
       font-size:18px;
       font-weight:bold;
       margin:8px 0px;
   }
   #mypage .flex_between>.flex_login>p:last-child{
       font-size:12px;
       color:#aaa;
       background:rgba(230,230,230,0.4);
       border-radius:4px;
       margin:0px;
       padding: 2px 5px;
   }
    #mypage .flex_between>.flex_avatar{
        border-radius:50%;
        width:65px;
        height:65px;
        background-image:url("../../assets/resource/03.png");
        background-repeat:no-repeat;
        background-size:100px 100px;
        margin-top:40px;
    }
    #mypage .flex_around>.flex_tab>div{
        width:30px;
        height:30px;
        margin-left:10px;
        margin-top:30px;
    }
     #mypage .flex_around>.flex_tab>p{
         font-size:13px;
         margin-top:7px;
     }
   #mypage .flex_around>.flex_tab>div>img{
       width:100%;
       height:91%;
   } 
    #mypage .flex_around>.flex_home{
        background:rgba(230,230,230,0.5);
        width:66px;
        height:70px;
        color:#906bc8;
        text-align:center;
        border-radius:8px;
    }
    #mypage .flex_around>.flex_home>img{
        width:30px;
        height:30px;
        margin-top:9px;
    }
     #mypage .flex_around>.flex_home>p{
         font-size:12px;
         margin:2px 0 3px 0
     }
    #mypage li.flex_between{
         padding:10px 5px;
         border-bottom:1px solid rgb(210,210,210);
     }
    #mypage li.flex_between>span:last-child{
         color:#aaa;
         font-weight:bold;
         font-size:12px;
     }
</style>