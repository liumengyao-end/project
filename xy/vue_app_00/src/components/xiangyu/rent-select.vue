<template>
    <div>
         <!--租房title-->
        <div class="rent-title">
            <!--返回，搜索，地图-->
            <div class="flex_between">
                <img src="../../assets/resource/fanhui.png">
                <div class="rent_select">
                    <span >请输入小区/商圈/地铁站等</span>
                </div>
                <img src="../../assets/resource/weizhi.png">
            </div>
            <!-- 下拉选框 -->
            <div>
                <select name="全北京" id="#c1">
                    <option value="全北京">不限</option>
                    <option value="背景">北京</option>
                </select>
            </div>
        </div>
    </div>
</template>
<style scoped>
    .rent-title{
        position:fixed;
        top:0px;
        width:100%;
        height:100px;
        background:#fff;
        align-items:center;
    }
    .rent-title>.flex_between>img{
        width:25px;
        height:25px;
        padding-right:15px;
        padding-top:15px;
        
    }
    .rent_select{
        background:rgba(230,230,230,0.9) url("../../assets/resource/fangdajing.png") no-repeat left center;
        border-radius:5px;
        padding:10px 70px 10px 20px;
        color:#666;
        background-size:20px 20px;
        margin-top:10px;
    }
    .rent-title>.flex_between>div>img{
        width:20px;
        height:20px;
    }
</style>