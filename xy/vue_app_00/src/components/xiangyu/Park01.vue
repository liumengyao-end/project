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
                    <div>
                        <mt-swipe :auto="4000" class="change">
                            <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+item.img_url0" ></mt-swipe-item>
                            <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+item.img_url1" ></mt-swipe-item>
                            <mt-swipe-item><img :src="`http://127.0.0.1:3000/img/`+item.img_url2" ></mt-swipe-item>
                        </mt-swipe>
                    </div>
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
            <!--floor4贴心服务-->
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
                        <img src="../../assets/park/huxing.png" style="width:25px;">
                        <p>户型方正</p>
                        <p>独立阳台</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/button.png" style="width:25px;">
                        <p>优质家电</p>
                        <p>智能门锁</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/guangxian.png" style="width:25px;">
                        <p>免费联通</p>
                        <p>光纤入户</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/huxing.png" style="width:25px;">
                        <p>24h</p>
                        <p>快递柜</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/mianfei.png" style="width:25px;">
                        <p>服务中介</p>
                        <p>费用全免</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/xingxing.png" style="width:25px;">
                        <p>安保管家</p>
                        <p>贴心服务</p>
                    </div>
                     <div class="box">
                        <img src="../../assets/park/shijian.png" style="width:25px;">
                        <p>一月起租</p>
                        <p>随看随住</p>
                    </div>
                </div>
            <!--floor5公共设施-->
                <div class="serve sheshi">
                    <span>公共设施</span>
                </div>
                <div class="info info-detail">
                    <div class="detail">
                        <div class="box">
                            <div class="imgbox">
                                <img src="../../assets/park/jianshen.png" style="width:25px;">
                            </div>
                            <p>健身房</p>
                        </div>
                    </div>
                    <div class="detail">
                        <div class="box">
                            <div class="imgbox">
                                <img src="../../assets/park/taiqiu.png" style="width:25px;">
                            </div>
                            <p>台球</p>
                        </div>
                    </div>
                    <div class="detail">
                        <div class="box">
                            <div class="imgbox">
                                <img src="../../assets/park/shuba.png" style="width:25px;">
                            </div>
                            <p>书吧</p>
                        </div>
                    </div>
                    <div class="detail">
                        <div class="box">
                            <div class="imgbox">
                                <img src="../../assets/park/xiuxian.png" style="width:25px;margin-left:3px;margin-top:6px;">
                            </div>
                            <p>休闲</p>
                        </div>
                    </div>
                    <div class="detail">
                        <div class="box">
                            <div class="imgbox">
                                <img src="../../assets/park/huatong.png" style="width:25px;margin-left:6px;">
                            </div>
                            <p>话筒</p>
                        </div>
                    </div>
                </div>
            <!--floor7周边环境-->
                <div class="serve zhoubian">
                    <span>周边环境</span>
                </div>
                <div class="text">
                    <p>地铁:{{item.metro}}</p>
                    <p>公交:{{item.transit}}</p>
                    <p> 生活周边:{{item.periph}}</p>
                </div>
                <img src="../../assets/park/ditu.jpg" style="width:350px;height:250px;">
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
                list:[],
            }
        },
        methods:{
            loadMore(){//加载更多的数据
                var url = "park01";
                this.axios.get(url).then(result=>{
                //console.log(result)
                this.list=result.data.data;
                
                })
            }
         },
        created() {
            this.loadMore();
        }
    }

</script>
<style scoped>
    @import "../css/park.css";
</style>
<style scoped>
.change{
    width:100%;
    height:220px;
    margin: 0 auto;
}
.change img{
    width:100%;
    height:100%;
}
</style>