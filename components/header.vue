<template>
    <div class="header">
        <div class="rowFluid">
            <div class="span2 col-md-12">
            <div class="logo"> <a href="/" title="返回首页"> <img src="http://127.0.0.1:5555/images/logo.png" alt="响应式网络建设设计公司网站模板(自适应移动设备)" /> </a> </div>
            </div>
            <div class="header_menu">
                <ul id="menu">
                    <li v-for="(item,i) in navlist" :key="i" ><a href="javascript:;" :title="item.title" @click="tab" :data-i="i">{{item.title}}<span v-show="item.isShow"></span></a></li>           
                </ul>
            </div>
            </div>
            <div class="span2"> </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            navlist:[
                {title:'首页',show:false},
                {title:'解决方案',show: false},
                {title:'关于我们',show: false},
                {title:'客户案例',show: false},
                {title:'建站方案',show: false},
                {title:'新闻资讯',show: false},
                {title:'技术支持',show: false},
                {title:'联系我们',show: false},
            ]
            
        }
    },
    created() {
        
    },
    methods: {
        tab(e){
            
           var i=e.target.dataset.i;
　　　　　　this.navlist[i].isShow=true;
           console.log(this.navlist[i].isShow);
           console.log(this.navlist);
　　　　}
    },
}
</script>
<style>
    .header {
        height: 80px;
        line-height: 80px;
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 11;
        transition: 0.4s all;
        -webkit-transition: 0.4s all;
        background:#1E90FF;
    }
    .rowFluid {
        clear: both;

    }
    .rowFluid .logo{
        margin-left:50px;
    }
    .rowFluid:before, .rowFluid:after, .column:before, .column:after {
        content: ".";
        display: block;
        clear: both;
        height: 0;
        font-size: 0;
        visibility: hidden;
        overflow: hidden;
    }
    .header .rowFluid div.header_menu ul{
        float:right;
    }
    .header .rowFluid div.header_menu ul li{
        float:left;
        padding-right:70px;
        font-size:14px;
    }
    .header .rowFluid div.header_menu ul li a{
        color:#ddd;
    }
    .header .rowFluid div.header_menu ul li a:hover{
        color:white;
    }
    .header .rowFluid div.header_menu ul li span{
        display:block;
        width:40px;
        height:2px;
        background:white;
        content:"";
        display:block;
        margin-top:-20px;
        margin-left:5px;
    }
</style>