<template>
    <div class="bk">
        <div class="top">
            <span @click="back" class="topf">
                <img src="img/xy.png" alt="">
            </span>
            <span >手机号登陆</span>
        </div>
        <p>未注册手机号登录后将自动创建账号</p>
        <div class="inp">
            +86<input type="text" v-model="inp" v-focus placeholder="输入手机号">
            <span @click="del" class="sc">
                <img v-show="sc" src="img/sc.png" alt="">
            </span>
        </div>
        <div @click="next" class="btn">
           <button :class="bt1" :disabled="ds"  class="bt">下一步</button>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            sc:false,
            inp:"",
            bt1:{btn1:true},
            ds:true
        }
    },
    methods:{
        back(){
             this.$router.push("/login")
        },
        del(){
            this.inp="";
        },
        next(){
             this.$router.push("/login")
        }
    },
    directives:{
        focus:{
            inserted:function(el){
                el.focus()
            }
        }
    },
    watch:{
        inp(){
            if(this.inp.length>0){
                this.sc=true;
                this.bt1.btn1=false;
                this.ds=false;
            }else{
                this.sc=false;
                this.bt1.btn1=true;
                this.ds=true;
            }
        }
    }
}
</script>
<style scoped>
    .btn1{
        opacity: 0.5;
    }
    .btn{
        display: flex;
        justify-content: center;
        margin-top:30px; 

    }
    .bt{
        width:85%;
        padding: 6px;
        border:0;
        border-radius: 50px;
        outline: 0;
        background-image: linear-gradient(to right,#f13e3e,#c20c0c);
        color:#fff;
    }
    .sc img{
        width: 16px;
    }
    .sc{
        position: absolute;
        top:7px;
        right:5px;

    }
     input::input-placeholder{
         color:#9c9494;
          font-size:15px;
     }
    input::-webkit-input-placeholder{
          color:#aaa;
          font-size:15px;
     }
     input:-moz-placeholder{
         color:#9c9494;
          font-size:15px;
     }
    .topf img{
        width: 24px;
    }
    .topf{
        position: absolute;
        top:16px;
        left:6px;        
    }
    .top span{
        font-size:16px;
    }
    input{
        font-size:16px;
        border:0;
        outline: 0;
        margin-left:8px; 
    }
    .top{
        display: flex;
        justify-content: center;
        padding-top:20px; 
    }
   .bk{

        height: 667px;
    }
    p{
        color:#9c9494;
        font-size:10px;
        margin: 40px 5px 30px 10px;
    }
    .inp{    
        margin: 10px;
        padding:5px 0;
        border-bottom:1px solid #ddd; 
        position: relative;
    }
</style>
