<!--
    https://elemefe.github.io/vue-amap/#/zh-cn/introduction/quick-start
    这是下载的vue-amap组件库，按照快速上手进行安装引用，在main.js中
-->
<template>
  <div id="map">
    <div class="page-head" style="padding-top:15px;" >
        <img src="../../assets/resource/return.png" style="width:20px;position:absolute;left:5px;">
        <input type="text" placeholder="检索到149条房源，请点击查看">
        <img src="../../assets/park/zhuanfa.png" style="width:30px;position:absolute;right:5px;">
    </div>
    <div class="adress-box" style="position:absolute;bottom:200px;z-index:1000">
        <div class="adress">
            <span style="padding-top:10px;">地点&nbsp;&nbsp; | </span>
            <img src="../../assets/park/dingwei.png" style="width:20px;margin:0;"> <input type="text" placeholder="北京市海淀区万寿路西街2号">
            <span>筛选</span>
        </div>
    </div>
    <div>

    </div>
    <div class="amap-wrapper">
      <el-amap class="amap-box" :vid="'amap-vue'"></el-amap>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      msg: 'vue-amap向你问好！'
    }
  }
}
</script>

<style scoped>
.adress-box{
    text-align:center;
    margin-left:20px;
    line-height:40px;
    background:#fff;
    width:340px;
    height:40px;
}
.adress-box input{
    border:none;
    height:30px;
    margin-right:15px;
    margin-left:15px;
}
.amap-wrapper {
  width: 500px;
  height: 800px;
}
.page-head{
    background:rgba(0,0,0,0)
}
</style>