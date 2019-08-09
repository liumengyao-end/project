<template>
    <div>
        <mt-swipe :auto="4000" class="change">
            <mt-swipe-item><img :src="imgurl" ></mt-swipe-item>
            <mt-swipe-item><img :src="imgurl1" ></mt-swipe-item>

        </mt-swipe>
    </div>
</template>
<script>
    export default {
        data(){
            return {}
        },
        props:{
            imgurl:{default:""},
            imgurl1:{default:""},

        }
    }
</script>
<style  scoped>
.change{
    width:95%;
    height:150px;
    margin: 0 auto;
}
.change img{
    width:100%;
    height:100%;
    border-radius:15px;
}
</style>
