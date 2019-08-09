<template>
    <div>
        <div id="box" v-for="(item,i) of list" :key="i">
             <!--头-->
            <div class="page-head" style="position:relative;" >
                <img src="../../assets/resource/return.png" style="width:20px;position:absolute;left:5px;">
                <span>{{item.village}}</span>
                <img src="../../assets/park/zhuanfa.png" style="width:30px;position:absolute;right:5px;">
            </div>
            <!--轮播-->
            <div class="main">
                <div class="banner" >
                    <img :src="`http://127.0.0.1:3000/img/`+item.img_url0" style="width:350px;height:330px;">
                </div>
            <!--floor1-->
                <div class="floor_1">
                    <div class="village">
                        <h4>{{item.village+`|相寓PARK.北京`}}</h4>
                    </div>
                    <div class="trait">
                        <span class="label">{{item.trait1}}</span>
                        <span class="label">{{item.trait2}}</span>
                        <span class="label">{{item.trait3}}</span>
                    </div>
                </div>
            <!--floor2-->
                <div class="adress">
                    <div id="adress-box">
                        <img src="../../assets/park/dingwei.png" style="width:20px;"><!--定位-->
                            <span class="small_font">{{item.location}}</span>
                        <img src="../../assets/resource/next.png" style="width:15px;margin-left:75px;">
                    </div>
                </div>
            <!--floor3-->
                <div class="periph">
                    <span class="little_text">这里，紧邻“中国传媒界最高学府”——中国传媒大学，学院温情四处洋溢，才子佳人川流如织；通惠河的晚霞 如诗如画，欣欣然伴随你每日的归途，何不来这里寻找闹市旁遗世独立的美丽静谧？</span>
                </div>
            <!--floor4-->
                <div class="serve">
                    <span>贴心服务</span>
                </div>
                <div class="info">
                    <div class="box">
                        <img src="../../assets/park/jiaju.png" style="width:25px;">
                        <p>160m²</p>
                        <p>公共区域</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/jiaju.png" style="width:25px;">
                        <span>160m²公共区域</span>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/jiaju.png" style="width:25px;">
                        <span>160m²公共区域</span>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/jiaju.png" style="">
                        <span>160m²公共区域</span>
                    </div>
                </div>
            </div> <!--main结尾-->
            <!--尾部-->
            <div class="page-tail">
                <div class="tail-box">
                    <div class="tail people">
                        <span class="left">联系管家</span>
                    </div>

                    <div class="tail now">
                        <span class="right">立即预约</span>
                    </div>
                </div>
            </div>
        </div><!--box结尾-->
    </div>
</template>
<script>
    export default{
        props:{

        },
        data(){
            return {
                list:[]
            }
        },
        methods:{
            loadMore(){//加载更多的数据
                var url = "park";
                this.axios.get(url).then(result=>{
                console.log(result)
                this.list=result.data.data;
                
                })
            }
         },
        created() {
            this.loadMore();
        }
    }

</script>
<style>
    @import "../css/park.css"
</style>