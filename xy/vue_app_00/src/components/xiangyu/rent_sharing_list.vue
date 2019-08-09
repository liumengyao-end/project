<template>
    <div>
    <adress></adress>
    <div ref="wrapper" :style="{ height: (wrapperHeight-10) + 'px' }" id="d1" style="padding-top:50px;">
        <!--合租list-->
         <mt-loadmore :bottom-method="loadBottom" :bottom-all-loaded="allLoaded" ref="loadmore" :autoFill="isAutoFill">
            <div v-for="(item,i) of whole":key="i" v-if="i<=index-1" class="flex_between list"  >
            <div class="zhezhao" @click="detail" :id="i"></div>
                <img :src="`http://127.0.0.1:3000/img/`+item.img_url0" class="repeat" >
                <div style="width:199.55px;">
                    <!--title-->
                    <div class="lit_font">
                        <span v-text="item.rent_who"></span> <span>|</span> <span v-text="item.village"></span><span v-text="item.bedroom"></span>
                    </div>
                    <!--where-->
                    <div>
                        <span v-text="item.address" class="little_text address"></span>
                    </div>
                    <!--小标签  写死-->
                    <div>
                        <span class="small_tag" style="margin:8px">相寓好房</span>
                        <span class="small_tag">随之看房</span>
                    </div>
                    <!--money 户型 平米 朝向（没有为空）-->
                    <div class="flex_between">
                        <div>
                            <span v-text="item.price" class=" money"></span>
                            <span class="month">元/月</span>
                        </div>
                        <div>
                            <span class="little_text">{{item.housetype}} | {{item.area}}m²</span>
                            
                        </div>
                        <!--户型 平米 朝向-->
                    </div>
                </div>
            </div>
         </mt-loadmore>
        <!--推荐
        <div class="tuijian" id="searchBar">
            <img src="../../assets/resource/star.png">
            <span class="small_font">推荐</span>
        </div>-->
    </div>
    </div>
</template>
<script>
    import adress from "./adress.vue";
    export default {
        data(){
            return{
                has_log:0,
                allLoaded:false,//可以进行上拉
                isAutoFill:false,//是否自动触发上拉函数
                wrapperHeight:0,
                courrentPage:0,
                whole:[],
                list:[],
                index:5,

            }
        },
        created(){
            var whole=sessionStorage.getItem("whole");
            this.whole=JSON.parse(whole)
            console.log(this.whole)
        },
        mounted(){
            //给window添加一个滚动监听事件
             /*window.addEventListener('scroll', this.handleScroll);
             this.wrapperHeight = document.documentElement.clientHeight - this.$refs.wrapper.getBoundingClientRect().top; */
        },
        methods:{
            //下拉刷新
           /* loadTop(){
                this.loadFrist()
            },*/
            //上拉加载
            detail(e){
                console.log(e.target.id)
                console.log(this.whole)
                this.list=this.whole[e.target.id];
                console.log(this.list)
                var detail=this.list;
                 detail=JSON.stringify(detail)
                sessionStorage.setItem("detail",detail)
                this.$router.push("/details")
            },
            loadBottom(){
                this.loadMore();
                 this.$refs.loadmore.onBottomLoaded();
            },
            //下拉刷新加载
            loadMore(){
                if(this.index<this.whole.length){
                    this.index+=3;
                }else{
                    this.index>=this.whole.length;
                    this.allLoaded=true;
                };
            },
           
           /* handleScroll(){//给window添加一个滚动监听事件
                var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
                
                var offsetTop =document.querySelector("#searchBar").offsetTop;
                //console.log(document.querySelector("#searchBar").offsetTop)
                if(scrollTop<=100){
                    offsetTop =15 -Number(scrollTop);
                    document.querySelector('#searchBar').style.bottom = offsetTop+'px';
                }else{
                    document.querySelector('#searchBar').style.bottom = '5px';
                }
                
            }*/
            
            
        },
        components:{
            "adress":adress
        }
        
    }
</script>
<style>
    @import '../css/common.css';
</style>
<style scoped>
    
    .list{
        border-bottom:1px solid #efefef;
        padding:10px 0;
        height:140px;
        position:relative;
    }
    .list  .zhezhao{
        position:absolute;
        width:100%;
        height:100%;
        opacity:0;
        top:0;
        left:0;
    }
    .flex_between .repeat{
        width:140px;
        height:120px;
        vertical-align:top;
        border-radius:3px;
    }
    .flex_between .lit_font>span{
        margin-right:10px;
        font-weight:bold
    }
    .address{
        background:url("../resource/weizhi.png") no-repeat left center;
        background-size:12px 12px;
        padding-left:18px;
    }
    .money{
        font-weight:bold;
        font-size:18px;
        color:#f00;
        margin-right:3px;
    }
    .month{
        font-size:12px;
        color:#f00;

    }
    .tuijian{
        position:absolute;
        bottom:25px;
        right:8px;
        width:60px;
        height:60px;
        border-radius:50%;
        background-image:linear-gradient(to bottom,#906bc8,#f0f);
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:center;
    }
    .tuijian>img{
        width:25px;
        height:25px;
    }
    .tuijian>.small_font{
        color:#fff;
    }
    .mint-loadmore{
        height:100%;
    }
</style>