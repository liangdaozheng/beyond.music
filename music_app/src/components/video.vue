<template>
    <div class="video-box" style=" background:url(/static/img/videobox/6.jpg) no-repeat;background-size:300% 300%; overflow:hidden;background-position: center;" >
        <div class="video-body">
            <video src="@/assets/mp4/brave heart -tri.Version- - 宮崎歩.flac"></video>  
            <!-- 背景 -->
            <div class="video-play">
                <div class="top-title">
                    <span class="iconfont">&#xe64e;</span>
                    <span class="iconfont">&#xe684;</span>
                </div>
                <img src="/static/img/videobox/2.jpg" class="top-img">
                <div class="play-conainer">
                    <div class="img-body">
                        <img src="/static/img/videobox/6.jpg" width="100%">
                    </div>
                    <div class="turn-play"></div>
                </div>
                <div class="play-bar">
                    <span>00:00</span>
                    <div class="play-line">
                        <span class="play-posi"></span>
                    </div>
                    <span>04:10</span>
                </div>
                <div class="contr-bar">
                    <span class="iconfont">&#xe6a4;</span>
                    <span class="iconfont">&#xe6a5;</span>
                    <span class="iconfont">&#xe63c;</span>
                    <span class="iconfont">&#xe63a;</span>
                    <span class="iconfont">&#xe82a;</span>
                    <span class="iconfont">&#xe61d;</span>
                </div>
            </div>
        </div>   
    </div>
</template>

<script>
export default {
    data() {
        return {

        };
    },
    watch: {

    },
    methods: {

    },
    components: {

    },
};
</script>

<style scoped>
.video-body{
    display: flex;
    justify-content: center;
    min-height: 100%;
    background: rgba(0,0,0,0.6);
    
    
}
 video{
    display: none;
}
.top-title{
    display: flex;
    width: 100%;
    justify-content: space-between;
    padding:5px 3px;
    color:antiquewhite;
    position: absolute;
}
.top-title>span{
    font-size: 26px;
}
.video-play{
    width:100%;
    text-align: center;
    min-height: 100%;
}
.top-img{
    width:30%;
    margin:0 atuo;
    position: relative;
    z-index: 3;
}
.turn-play{
    background:transparent url(/static/img/videobox/1.jpg) no-repeat top;
    background-size: contain;
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: 2;
    content: "";
    top:0;
}
.img-body{
    overflow: hidden;
    background-size: contain;
    position: relative;
    border-radius: 50%;
    width:80%;
    margin:0 auto;
    padding:14%;
}
.turn-play>img{
    position:relative;
}
.play-conainer{
    position:relative;
    top:-14%;
}
.play-bar{
    position: relative;
    width:100%;
    text-align: center;
    margin-bottom: 1rem;
    display: flex;
    justify-content:space-between;
    padding:0 1rem;
} 
.play-line{
    width:70%;
    height:4px;
    background: black;
    border-radius: 3px;
    margin:0 auto;
    margin-top:2%;
}
.play-posi{
    display: block;
    width:10px;height:10px;
    border-radius: 50%;
    background: black;
    position: relative;
    top:-3px;
}
.contr-bar>span{
    font-size:2rem;
} 
</style>
