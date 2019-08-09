<template>
    <div>
    <div id="box">
        <div class="page-head">
            <span>{{title}}</span>
        </div>
        <div class="body-list">
            <div class="list one">
                <span class="list-right">
                    <img src="../../assets/resource/start.png" style="width:25px;padding-bottom:5px;">
                </span>
                <div class="list-left-box">
                    <div class="list-left" style="position:relative;">
                        <h5>{{OneTitle}}</h5>
                        <p>{{OneMsg}}</p>
                        <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>

             <div class="list two">
               <span class="list-right">
                    <img src="../../assets/resource/house.png" style="width:25px;padding-bottom:8px;">
                </span>
                 <div class="list-left-box">
                    <div class="list-left" style="position:relative;">
                        <h5>{{TwoTitle}}</h5>
                        <p>{{TwoMsg}}</p>
                        <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>

             <div class="list three">
               <span class="list-right">
                    <img src="../../assets/resource/floor.png" style="width:25px;">
                </span>
                <div class="list-left-box" >
                    <div class="list-left" style="position:relative;">
                        <h5>{{ThreeTitle}}</h5>
                        <p>{{ThreeMsg}}</p>
                         <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>

             <div class="list four">
                <span class="list-right">
                    <img src="../../assets/resource/serve.png" style="width:25px;">
                </span>
               <div class="list-left-box">
                    <div class="list-left" style="position:relative;">
                        <h5>{{FourTitle}}</h5>
                        <p>{{FourMsg}}</p>
                         <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>

             <div class="list five">
                <span class="list-right">
                    <img src="../../assets/resource/lihe.png" style="width:25px;">
                </span>

                 <div class="list-left-box">
                    <div class="list-left" style="position:relative;">
                        <h5>{{FiveTitle}}</h5>
                        <p>{{FiveMsg}}</p>
                         <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>

             <div class="list six">
                <span class="list-right">
                    <img src="../../assets/resource/other.png" style="width:25px;">
                </span>
                <div class="list-left-box">
                    <div class="list-left" style="position:relative;">
                        <h5>{{SixTitle}}</h5>
                        <p>{{SixMsg}}</p>
                         <img src="../../assets/resource/next.png" style="width:15px;position:absolute;right:0;top:25px;">
                    </div>
                </div>
            </div>
            
        </div>
        </div>
    </div>
</template>
<script>
    export default{
        props:{
             title:{default:"消息中心"},
             OneTitle:{default:"房源推荐"},
             OneMsg:{default:"你可能喜欢的房源"},

             TwoTitle:{default:"相寓HOME/ROOM"},
             TwoMsg:{default:"最新动态，你关注的信息都在这"},

             ThreeTitle:{default:"相寓PARK"},
             ThreeMsg:{default:"最新动态，你的合同相关信息来这看吧"},

             FourTitle:{default:"相寓服务"},
             FourMsg:{default:"最新服务动态，你关注的进程信息在这"},

             FiveTitle:{default:"相寓活动"},
             FiveMsg:{default:"最新活动信息，快戳这里加入我们吧"},

             SixTitle:{default:"其他消息"},
             SixMsg:{default:"其他你可能关注的信息在这"},

        },
        data(){
            return {

            }
        }
    }
</script>
<style>
    @import "../css/common01.css";
    @import "../css/MessageLists.css";
</style>