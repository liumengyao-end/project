<template>
    <div>
        <div id="detalis">
            <!--title部分-->
            <div class="fixed flex_between">
                <img src="../../assets/resource/fanhui.png" class="title_img" @click="back">
                <div class="title-right">
                    <span class="mid_font">房源纠错</span>
                    <img :src="imgs"  class="title_img" @click="guanzhu">
                    <img src="../../assets/resource/zhuanfa.png"  class="title_img">
                </div>
            </div>
            <div style="height:50px;"></div>
            <!--轮播组件-->
           <mt-swipe :auto="4000" class="change">
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+details.img_url0" ></mt-swipe-item>
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+details.img_url1" ></mt-swipe-item>
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+details.img_url2" ></mt-swipe-item>
                <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+details.img_url3" ></mt-swipe-item>
            </mt-swipe>
            <!--租房标题 钱-->
            <div class="title_money">
                <div>
                    <div class="title_font">
                        <span>{{details.rent_who}} | </span><span>景馨园</span>
                    </div>
                    <div class="money_color">
                        <span class="big_font">{{details.price}} </span><span>元/月 </span> <span style="color:#000">（押一付三）</span>
                    </div>
                    <div >
                        <span class="small_tag">近地铁</span> <span class="small_tag">相寓好房</span><span class="small_tag">临时看房</span>
                    </div>
                </div>
            </div>
            <!--户型、面积、位置、朝向-->
            <div>
                <div class="flex_between house_area">
                    <div class="house">
                        <span class="smler_font">户型</span>
                        <span>{{details.housetype}}</span>
                    </div>
                    <div class="house">
                        <span class="smler_font">面积</span>
                        <span>{{details.area}}m²</span>
                    </div>
                    <div class="house">
                        <span class="smler_font">朝向</span>
                        <span>{{details.orient}}</span>
                    </div>
                </div>
                <div class="flex_between location">
                    <span class="lit_font">{{details.address}}</span>
                    <img src="../../assets/resource/qianjin.png" >
                </div>
            </div>
            <!--详细信息-->
            <div class="details flex_between lit_font">
                <div><span>楼层 </span><span> {{details.storey}}</span></div>
                <div><span>供暖 </span><span> --</span></div>
                <div><span>电梯 </span><span> 有电梯</span></div>
                <div><span>位置 </span><span> {{details.location}}</span></div>
                <div><span>小区 </span><span> {{details.village}}</span></div>
            </div>
            <!--看房时间 起租时间 可签约时间-->
            <div class="flex_column lit_font">
                <div><span>看房时间</span> <span> 随时看房</span></div> 
                <div><span>起租时间</span> <span> 2019-07-20</span></div> 
                <div><span>可签约至</span> <span> 2020-04</span></div> 
            </div>
            <!--房屋设施-->
            <div class="flex_between ">
                <span class="title_font">房屋设施</span>
                <div class="seeMore">
                    <span class="smler_font">查看更多</span>
                </div>
            </div>
            <div class="flex_around">
                 <!--循环-->
                <div class="sheshi_details flex_column" v-for="(item,i) of list":key="i">
                    <div>
                        <img :src="item.img" >
                    </div>
                    <span class="small_font">{{item.name}}</span>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { Toast } from 'mint-ui';
    export default {
        data(){
            return{
                list:[{"img":require("../../assets/resource/bingxiang.png"),"name":"冰箱"},{"img":require("../../assets/resource/chaji.png"),"name":"茶几"},{"img":require("../../assets/resource/weiyu.png"),"name":"卫浴"},{"img":require("../../assets/resource/bed.png"),"name":"床"},{"img":require("../../assets/resource/deng.png"),"name":"灯"},],
                details:{},
                imgs:require("../../assets/pic/guanzhu.png"),
                kaiguan:true
              
            }
        },
        created(){
           var detail=sessionStorage.getItem("detail");
            this.details=JSON.parse(detail)
              //console.log(this.details)
        },
        methods:{
            back(){
                this.$router.go(-1);
            },
            guanzhu(){
                if(this.kaiguan){
                     this.imgs=require("../../assets/pic/guanzhu1.png");
                    Toast({
                        message: '关注成功',
                        position: 'middle',
                        duration: 1000
                    });
                    var url="insertCart";
                    var obj=this.details;
                    //console.log(obj)
                    this.axios.get(url,{params:obj}).then(result=>{
                        if(result.data.code>0){
                            //console.log(result)
                            //this.cid=result.data.data.cid
                            //console.log(this.cid)
                        }
                    })
                    this.kaiguan=false
                }else{
                    this.imgs=require("../../assets/pic/guanzhu.png");
                    Toast({
                        message: '取消关注',
                        position: 'middle',
                        duration: 1000
                    });
                    var url="gdx";
                    var fid=this.details.fid
                    //console.log(cid)
                    var obj={fid}
                    //console.log(obj)
                    this.axios.get(url,{params:obj}).then(result=>{
                        if(result.data.code>0){
                            //console.log(123)
                        }
                    }).catch(err=>{
                        //console.log(err)
                    })
                    this.kaiguan=true
                }
               
            }
        }
    }
</script>
<style >
    @import '../css/common.css'; 
</style>
<style scoped>
   #detalis{
       padding:0 8px;
   }
   #detalis .fixed{
       position:fixed;
       top:0;
       background:#fff;
       height:30px;
       width:100%;
       padding:5px 0px;
       z-index:100;
   }
  #detalis .title-right{
      display:flex;
      justify-content:space-around;
      text-align:center;
      margin-right:20px;
      width:40%;
  }
  #detalis  .title_img{
       height:20px;
   }
   #detalis .money_color{
       color:#f44;
   }
  #detalis  .money_color .big_font{
       font-weight:bold;
   }
   #detalis .small_tag{
       margin:15px 8px 0 0;
   }
   #detalis .title_money{
       border-bottom:1px solid #ddd;
       padding-bottom:15px;
   }
   #detalis .house_area{
       padding:18px 0;
       border-bottom:1px solid #ddd;
       justify-content:space-around;
   }
   #detalis .house{
       display:flex;
       flex-direction:column;
       border-right:1px solid #ddd;
        justify-content:flex-start;
        align-items:flex-start;
        padding-right:50px;
   }
   #detalis .house:last-child{
       border-right:0;
   }
    #detalis .house .smler_font{
        color:#aaa;
        margin-bottom:5px;
    }
    #detalis .location{
        padding:15px 0;
        border-bottom:1px solid #ddd;
    }
    #detalis .location>.lit_font{
        background:url("../../assets/resource/weizhi.png") no-repeat left center;
        background-size:15px 15px;
        padding-left:20px;
        color:#aaa;
        
    }
     #detalis .location>img{
         width:20px;
         height:20px;
     }
     #detalis .details{
         flex-wrap:wrap;
         border-bottom:1px solid #ddd;
         padding:20px 0;
     }
     #detalis .details>div{
         width:50%;
         padding-top:15px;
     }
     #detalis .details>div>span:first-child{
         color:#aaa;
     }
     #detalis .flex_column{
         display:flex;
         flex-direction:column;
         padding:20px 0;
     }
     #detalis .flex_column>div{
         padding-bottom:15px;
     }
     #detalis .flex_column>div>span:first-child{
         color:#aaa;
         margin-right:5px;
     }
      #detalis .seeMore{
          color:#aaa;
          margin-left:180px;
          padding:5px 0;
          text-align:center;
      }
       #detalis .seeMore>span{
           background:url("../../assets/resource/qianjin.png") no-repeat right center;
           background-size:15px 15px;
           padding-right:20px;
       }
       #detalis .sheshi_details>div{
           background:#ddd;
           width:60%;
           height:30px;
           border-radius:5px;
           text-align:center;
           padding:10px 0 0 0;
           align-self:center;
       }
       #detalis .sheshi_details>div>img{
           width:60%;
           height:60%;
       }
        #detalis .sheshi_details>span{
           align-self:center;
        }
         .change{
        width:95%;
        height:250px;
        border-radius:8px;
        margin: 0 auto;
    }
    .change img{
        width:100%;
        height:100%;
    }
    
</style>
