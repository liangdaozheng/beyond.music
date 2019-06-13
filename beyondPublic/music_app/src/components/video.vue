<template>
    <div class="video-box" width="100%" >
        <img src="/static/img/videobox/6.jpg" class="bg-bulr">
        <div class="video-body">
            <video src="@/assets/mp4/brave heart -tri.Version- - 宮崎歩.flac"></video>  
            <!-- 背景 -->
            <div class="video-play">
                <div class="top-title">
                    <span class="iconfont">&#xe61f;</span>
                    <span class="iconfont">&#xe656;</span>
                </div>
                <img src="/static/img/videobox/2.jpg" class="top-img">
                <div class="play-conainer">
                    <div class="img-body">
                        <img src="/static/img/videobox/6.jpg" width="100%">
                    </div>
                    <div class="turn-play"></div>
                </div>
                <div>
                    <p>brave heart</p>
                    <p> 宮崎歩</p>
                </div>
                <div class="play-bar">
                    <span>00:00</span>
                    <div class="play-line">
                        <span class="play-posi"></span>
                    </div>
                    <span>04:10</span>
                </div>
                <div class="contr-bar">
                    <audio :src="musicsrc" controls="controls"  ref="audio" @play="ready" @pause="pause" preload="auto" autoplay="autoplay" @loadeddata="loadd" @loadstart="loads" @error="err"></audio> 
                    <span class="iconfont">&#xe68f;</span>
                    <span class="iconfont">&#xe603;</span>
                    <span class="iconfont" data-icon="&#xe6a4;">&#xe6a5;</span>
                    <span class="iconfont">&#xe602;</span>
                    <span class="iconfont" data-icon="&#xe747;">&#xe63b;</span>
                <hr>
                </div>
            </div>
        </div>  
    </div>
</template>

<script>

export default {
    data() {
        return {
            musicsrc:"../assets/mp4/djx.mp3",
        };
    },
    watch: {
        
    },
    methods: {
      ab(){
          var image=document.getElementsByClassName("bg-bulr")[0];
          console.log(image.height);
      },
     
     ready(){
        console.log("play click");
        },
     pause(){
         console.log("pause click");
        },
    loadd(){
        console.log("加载数据中")
        },
    loads(){
        console.log("数据加载开始")
        
    },
    err(){
        console.log("error")
        //this.$refs.audio.load();
    }


    },
    components: {

    },
    created(){
        
    },
    mounted(){
        this.ab();
        
    }
};
</script>

<style scoped>
.video-body{
    display: flex;
    justify-content: center;
    min-height: 105%;
    background: rgba(0,0,0,0.6);
    z-index: 3;
    
}
 video{
    display: none;
}
img.bg-bulr{
    position: absolute;
    width:100vw; height:100vh;
    z-index: -1;
    filter:blur(15px);
}
.top-title{
    display: flex;
    width: 100%;
    justify-content: space-between;
    padding:5px 3px;
    color:antiquewhite;
    position: absolute;
    margin:0 auto;
}
.top-title>span{
    font-size: 26px;
}
.video-play{
    width:100%;
    text-align: center;
    min-height: 100%;
    min-height:664px;
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
    z-index: 10;
    bottom:0;
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
