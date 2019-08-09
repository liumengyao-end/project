<template>
    <div class="adr">
        <van-dropdown-menu>
        <!--全北京-->
            <van-dropdown-item  v-model="value1" :options="option1" title="全北京">
                <van-tree-select
                :items="items"
                :main-active-index="mainActiveIndex"
                :active-id="activeId"
                @click-nav="onClickNav"
                @click-item="onClickItem"
                />
            </van-dropdown-item>
        <!--租金-->
            <van-dropdown-item @click.native="add" v-model="value2" :options="option2" :title="title1" />
        <!--排序-->
            <van-dropdown-item @click.native="pdd" v-model="value3" :options="option3" :title="title2" />
        <!--更多-->
            <van-dropdown-item v-model="value4" :options="option4" title="更多">
            <div  class="more-box">
                <div class="more" @click="bgChange">
                    <h3>类型</h3>
                    <button>整租</button>
                    <button>合租</button>
                    <h3>户型</h3>
                    <button>一居</button>
                    <button>二居</button>
                    <button>三居</button>
                    <button>更多</button>
                    <h3>期望入住日</h3>
                    <button >当天入住</button>
                    <button>一周以内</button>
                    <button>一月以内</button>
                    <button>一月以上</button>
                </div>
                <br>
                <button class="again">重置</button>
                <button class="srue">确定</button>
                <br>
            </div>
            </van-dropdown-item>
        </van-dropdown-menu>

    </div>
</template>
<script>
    export default{
        props:{
            
        },
        data(){
            return {
                value1: 0,
                value2: 'a',
                value3: 0,
                value4: 0,
                title1:'租金',
                title2:'排序',
                option1: [
                ],
                
                option2: [//全北京
                    { text: '不限', value:0 },
                    { text: '1500元以下', value: 1 },
                    { text: '1500-2500元', value: 2 },
                    { text: '2500-4000元', value: 3 },
                    { text: '4000-5500元', value: 4 },
                    { text: '5500-7000元', value: 5 },
                    { text: '7000元以上', value: 6 }
                ],
                option3:[
                    {text:'默认排序',value: 0 },
                    {text:'租金升序',value: 1 },
                    {text:'面积升序',value: 2 },
                    {text:'面积降序',value: 3 },
                    {text:'新上房源',value: 4 },
                ],
                option4:[
                ],
                
            // 城市
            items:[
                {  // 导航名称
                    text: '朝阳区',
                    // 该导航下所有的可选项
                    children: [
                        {text: '不限',id: 1},// id，作为匹配选中状态的标识
                        {text: 'CBD',id: 2 },
                        {text:'安定门',id: 3},
                        {text:'奥林匹克公园',id: 4},
                        {text:'北工大',id: 5},
                        {text:'成寿寺', id: 6},
                        {text:'大望路', id: 7},
                        {text:'立水桥',id: 8},
                        {text:'回龙观',id: 9},
                        {text:'西三旗',id: 10},
                        {text:'潘家园',id: 11},
                        {text:'三里屯',id: 12}
                    ]//children结尾
                },
                 {  // 导航名称
                    text: '海淀区',
                    // 该导航下所有的可选项
                    children: [
                        {text: '不限',id: 1},// id，作为匹配选中状态的标识
                        {text: '学院路',id: 2 },
                        { text:'颐和园',id: 3},
                        { text:'玉泉路',id: 4},
                        {text:'圆明园',id: 5},
                        { text:'中关村', id: 6},
                        { text:'西直门', id: 7},
                        {text:'万寿路',id: 8},
                        {text:'田村',id: 9},
                        {text:'万柳',id: 10},
                        {text:'魏公村',id: 11},
                        {text:'六里桥',id: 12}
                    ]//children结尾
                },
                {  // 导航名称
                    text: '石景山',
                    // 该导航下所有的可选项
                    children: [
                        {text: '不限',id: 1},// id，作为匹配选中状态的标识
                        {text: '八角',id: 2 },
                        { text:'城子',id: 3},
                        { text:'古城',id: 4},
                        {text:'苹果园',id: 5},
                        { text:'石景山周边', id: 6},
                        { text:'田村', id: 7},
                        {text:'玉泉路',id: 8},
                        {text:'杨庄',id: 9}
                    ]//children结尾
                },
                {  // 导航名称
                    text: '丰台区',
                    // 该导航下所有的可选项
                    children: [
                        {text: '不限',id: 1},// id，作为匹配选中状态的标识
                        {text: '北京南站',id: 2 ,children:[{text:'自丰台',id:1}]},
                        { text:'草桥',id: 3},
                        { text:'成寿寺',id: 4},
                        {text:'大红门',id: 5},
                        {text:'方庄', id: 6},
                        {text:'丰台周边', id: 7},
                        {text:'广安门',id: 8},
                        {text:'义和',id: 9},
                        {text:'科技园区',id: 10},
                        {text:'六里桥',id: 11},
                        {text:'马家堡',id: 12}
                    ]//children结尾
                }

            
            ],
            
            mainActiveIndex:0,
            // 被选中元素的id
            activeId: 1
            }
        },
        methods:{
        //点击按钮改变按钮样式
            bgChange(e){
                console.log(e.target.nodeName);
                var more=document.getElementsByClassName("more")[0];
                var btns=more.getElementsByTagName("button");
                if(e.target.nodeName=='BUTTON'){
                   //.bs嫁给所有的button
                   for(var item of btns){
                       item.className="bs";
                   }
                   // var btns=doucument
                   e.target.className="ms";


                }
            },

           add(e){
               console.log(e.target)
               this.title1=e.target.textContent;               
           },
           pdd(e){
               this.title2=e.target.textContent;
           },
        //    城市
            onClickNav(index) {
            this.mainActiveIndex = index;
            },
            onClickItem(data) {
            this.activeId = data.id;
           
            console.log(data);
             console.log(data.text);
            },
           
        }
    }

</script>
<style scoped>
    .adr{
        position:fixed;
        top:0;
        width:100%;
        z-index:999;
    }
    .more-box{
        padding:15px;
        padding-top:0;
    }
    .more-box button,.more .bs{
        background:#dad6d;
        border:none;
        margin-right:12px;
        border-radius:3px;
        color:gray;
    }
    .more .ms{
        background:#c7bbda;
        border:1px solid #906bc8!important;
        color:#906bc8!important;
        margin-right:12px;
        border-radius:3px;
    }
    .more button{
        width:73px;
        height:30px;
        font-size:14px;
    }
    .again{
        width:120px;
        height:40px;
        background:#dad6d;
        border:none;
    }
    .srue{
        width:201px;
        height:40px;
        background:#906bc8;
        color:white!important;
    }
</style>