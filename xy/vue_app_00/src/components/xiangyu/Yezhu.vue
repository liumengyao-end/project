<template>
<div class="yzwt">
   <div class="title flex_between">
      <div class="kong"></div>
      <div>业主委托</div>
      <span><img src="../../assets/little/sharing.png"></span>
   </div>
   <div id="im">
      <img id="pn" src="../../assets/pic/4-3.png">
   </div>
   <div id="weit">
      <span class="title_font">房屋出租，交给相寓托管</span>
      <span class="little_text ltitle">200万业主信赖的选择</span>
      <div id="btn">
         <a href="javascript:;">电话咨询</a>
         <a href="javascript:;">在线委托</a>
      </div>
   </div>
   <div id="ituo">
      <div class="ituo" v-for="(item,i) in list" :key="i">
         <div><img :src="item.imgurl"></div>
         <span v-text="item.stitle"></span>
         <span class="little_text" v-text="item.span1"></span>
         <span class="little_text" v-text="item.span2"></span>
      </div>
   </div>
   <div id="ways">
      <span class="title_font">相寓托管的三种方式</span>
      <span class="little_text ltitle">相寓根据房屋品质、租约年限等，为您提供两种托管方案</span>
      <div>
         <img src="../../assets/pic/zwfj25.jpg">
         <div>
            <span>装 修 相 寓</span>   
            <span>省时、省心、省事，收益有保障，装修附加值</span>
         </div>
      </div>
      <div class="t2">
         <img src="../../assets/pic/xdfj76.jpg">
         <div>
            <span>普 通 相 寓</span>   
            <span>保留原有的装修</span>
         </div>
      </div>
      <div class="t3">
         <img src="../../assets/pic/xdfj1.jpg">
         <div>
            <span>随 心 租 相 寓</span>   
            <span>房租委托模式比较灵活</span>
         </div>
      </div>
   </div>
   <div class="btm">
      <img src="../../assets/pic/timg.png"><br>
      <img class="second" src="../../assets/pic/bannerslogan.png">
   </div>
</div>
</template>
<script>
import 'vant/lib/popup/style';
   export default {
      data(){
         return{
            show: false,
            list:[
                  {
                  "id":1,
                  "imgurl":require('../../assets/little/01_an.png'),
                  "stitle":"避免空置",
                  "span1":"租客流动导致的多次招租",
                  "span2":"风险由我们承担"
                  },
                  {
                  "id":2,
                  "imgurl":require("../../assets/little/shouyi.png"),
                  "stitle":"收益稳定",
                  "span1":"租金收入稳定且相寓业主的",
                  "span2":"收入一般不低于个人招租的收入"
                  },
                  {
                  "id":3,
                  "imgurl":require("../../assets/little/shan.png"),
                  "stitle":"超低风险",
                  "span1":"相寓为您降低无法按时收租",
                  "span2":"财产受损、租客不可靠等风险"
                  },
                  {
                  "id":4,
                  "imgurl":require("../../assets/little/copy.png"),
                  "stitle":"省时省心",
                  "span1":"不用您花大量的时间和精力发布",
                  "span2":"招租的信息 多次约见租客看房"
                  },
                  {
                  "id":5,
                  "imgurl":require("../../assets/little/dianzuan.png"),
                  "stitle":"轻松维修",
                  "span1":"小维修我们免费出工出力",
                  "span2":"大维修我们免费替您跑腿办事"
                  },
                  {
                  "id":6,
                  "imgurl":require("../../assets/little/zuanshi.png"),
                  "stitle":"品牌可信赖",
                  "span1":"在管家房屋30万套",
                  "span2":"拥有18年房屋资产管理经验"
                  },
            ],
            ways:[
               //{img:}
            ]
         }
      },
      methods:{
         sharing(){
               this.show = true;
         }
      }
   }
</script>
<style>@import '../css/common.css';</style>
<style scoped>
@import '../css/Yezhu.css';
</style>