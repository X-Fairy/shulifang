<template>
    <div class="home">
        <!--在页面上使用组件标签-->
        <my-header></my-header>
        <main id="main" class="container">
            <!--bnner轮播-->
            <div class="bnner" @mouseenter="stop">
                <transition-group tag='ul' class="clearfix slide" name='image'>
                    <li v-for='(image,index) in bnner' :key='index' v-show='index===mark'>
                        <a><img :src="image.img"></a>
                    </li>
                </transition-group>
                <!--轮播原点-->
                <div class="bullet">
                    <span v-for='(item,index) in bnner.length' :class="{'active':index===mark}" @click='change(index)'></span>
                </div>
            </div>
            <!--右边侧栏内容-->
            <aside>
                <!--侧边栏导航-->
                <ul class="aside">
                    <li> 
                        <a href="javascripe:;" target="_blank" title="合作">
                            <img src="http://127.0.0.1:5555/images/icon/057.png" alt="合作" />合作
                        </a> 
                    </li>
                    <li   @click="showAside">
                        <a href="javascripe:;" title="建站在线客服" :class="{'active':isShow===true}">
                            <img src="http://127.0.0.1:5555/images/icon/059.png" class="img1" alt="建站在线客服"><img src="http://127.0.0.1:5555/images/icon/061.png" class="img2" alt="建站在线客服" v-show="isShow" style="margin-top:-10px;">咨询</a>
                    </li>
                    <li> <a href="javascripe:;"><img src="http://127.0.0.1:5555/images/icon/060.png" alt="建站帮助中心" />帮助</a> </li>
                </ul>
                <!---侧边栏内容-->
                <transition name="mybox">
                    <div class="aside_box" v-show="isShow">
                        <div class="title">
                        <p>RELATEED CONSULTING</p>
                        <p>相关咨询 </p>
                        </div>
                        <div class="choose">
                            <h3>选择下列产品马上在线沟通</h3>
                            <ul>
                                <li>
                                    <a><img src="http://127.0.0.1:5555/images/icon/062.png" class="img1" ><img src="http://127.0.0.1:5555/images/icon/063.png" >建站咨询
                                    <span></span></a>
                                </li>
                                <li> <a href="javascript:;" > <img src="http://127.0.0.1:5555/images/icon/062.png" class="img1"><img src="http://127.0.0.1:5555/images/icon/063.png" />加盟咨询 </a> </li>
                                <li> <a  href="javascript:;" > <img src="http://127.0.0.1:5555/images/icon/062.png" ><img src="http://127.0.0.1:5555/images/icon/063.png" class="img2" >定制咨询 </a> </li>
                                </ul>
                            <div class="time">服务时间：9:30-18:00</div>
                        </div>
                        <div class="problem">
                            <div class="problem_title">你可能遇到了下面的问题</div>
                            <ul>
                                <li><span></span><a href="javascript:;">开发App的5个基本步骤</a></li>
                                <li><span></span><a href="javascript:;">手机App的发展前景展望</a></li>
                                <li><span></span><a href="javascript:;">网站制作从原型图架构到设计开发的具体步骤</a></li>
                                <li><span></span><a href="javascript:;">站长必看网站建设系统选择知识</a></li>
                                <li><span></span><a href="javascript:;">高端网站建设必须要满足哪些要求</a></li>
                            </ul>
                        </div>
                        <div class="close" @click="close"> <img src="http://127.0.0.1:5555/images/icon/close.png" alt="关闭右侧工具栏" /> </div>                        
                    </div>
                </transition>
            </aside>
            <!--我们的产品-->
            <div class="product">
                <h1>我们的产品</h1>
                <p>OUR PRODUCT</p>
                <div class="index_product">                
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p></div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/045.png" alt="">
                        <p>企业官网</p>
                        <p>CORPORATE WEBSITES</p>
                    </div>
                </div>
            </div>
            <!--数立方优势-->
            <div class="advantage">
                <!--标题-->
                <div class="adv">
                    <h1>数立方优势</h1>
                    <p>PLATFORM ADVANTAGE</p>
                </div>
                <!--内容-->
                <div class="index_adv">                
                    <div>
                        <img src="http://127.0.0.1:5555/images/008.png" alt="">
                        <div>
                            <p>免网站制作费</p>
                            <p>只收空间域名取成本价</p>
                        </div>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/009.png" alt="">
                        <div>
                            <p>快速建站</p>
                            <p>打破传统网站制作工时<br>网站制作最快只需1天</p>
                        </div>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/010.png" alt="">
                        <div>
                            <p>多合一终端使用</p>
                            <p>一个网站能够在CP+平板+手机<br/>完美响应展示</p>
                        </div>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/011.png" alt="">
                        <div>
                            <p>大数据</p>
                            <p>升级更新数据保留，企业数据沉淀<br/>实现数据分析</p>
                        </div>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/012.png" alt="">
                        <div>
                            <p>高端设计</p>
                            <p>主流设计风格，极致交互体验，<br/>提升品牌价值</p>
                        </div>
                    </div>
                    <div>
                        <img src="http://127.0.0.1:5555/images/013.png" alt="">
                        <div>
                            <p>平台运行于阿里云计算中心<br/>多备份容灾保障，安全稳定</p>
                            <p>安全稳定</p>
                        </div>
                    </div>
                </div>
                <!--轮播图-->
                <div class="images_show">
                    <div class="pc"> <img src="http://127.0.0.1:5555/images/015.png">
                        <div class="pic">
                            <div class="item" v-for="(item,i) of img1" :key="i" :style = {transform:transform} :class="{scroll:num===0}"> <img :src="item"></div>
                        </div>
                    </div>
                    <div class="pad"> <img src="http://127.0.0.1:5555/images/017.png">
                        <div class="pic">
                            <div class="item" v-for="(item,i) of img2" :key="i" :style = {transform:transform} :class="{scroll:num===0}"> <img :src="item" ></div>
                        </div>
                    </div>
                    <div class="phone"> <img src="http://127.0.0.1:5555/images/016.png">
                        <div class="pic">
                            <div class="item" v-for="(item,i) of img3" :key="i" :style = {transform:transform} :class="{scroll:num===0}"> <img :src="item"></div>
                        </div>
                    </div>
                    <div class="circle">
                        <span v-for="(item,i) of img1" :key="i" :data-i="i" :class="{'active':i===num}" @click='change(i)'></span>
                    </div>
                </div>
            </div>
            <!--营销优势-->
            <div class="market">
                <h1>营销优势</h1>
                <p>MARKETING ADVANTAGE</p>
                <div class="index_market">                
                    <div class="img">
                        <img src="http://127.0.0.1:5555/images/019.jpg" alt="">
                    </div>
                    <div class="content">
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/000.png" alt="">
                            <p>全网营销响应式网站营销</p>
                            <p>响应式全屏幕营销网站，无需重复投资无需重复维护，无需重复运营</p></div>
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/021.png" alt="">
                            <p>微信无缝对接平台微信营销</p>
                            <p>全面整合微信营销，数据对接微信互动与分享</p>
                        </div>
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/022.png" alt="">
                            <p>社交分享跨屏网站社交分享</p>
                            <p>一键分享到微博、QQ空间朋友圈等社交网络</p>
                        </div>
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/023.png" alt="">
                            <p>优化搜索响应式网站SEO</p>
                            <p>SEO轻松提高百度谷歌等搜索引擎的关键词自然排名。</p>
                        </div>
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/024.png" alt="">
                            <p>二维码二维码分享</p>
                            <p>生成页面二维码，任意分享</p>
                        </div>
                        <div>
                            <img src="http://127.0.0.1:5555/images/icon/025.png" alt="">
                            <p>分销体系响应式分销商城网站</p>
                            <p>系统化整合客户快速营销</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--合作伙伴-->
            <div class="partners">
                <h1>合作伙伴</h1>
                <p>COOPERATIVE PARTNER</p>              
                <div class="index_partner">
                    <ul>
                        <li v-for="(item,i) of partners" :key="i"><img :src="item.img" alt=""></li>
                    </ul>                
                </div>
                <div class="join">
                    <h1>选择数立方网络，让你的企业快速迈向互联网+时代</h1>
                    <p>选择对的服务商能让您更快更好的迈进互联网+时代</p>
                    <button>点击咨询</button>
                </div>
            </div>
            <div class="news">
                <h1>新闻中心</h1>
                <p>NEWS TRENDS</p>
                <div class="index-news">
                    <div class="type" v-for="(item,i) of newtype" :key="i">
                        <img :src="item.pic">
                        <p>{{item.type}}</p>
                    </div>
                    <ul class="news">
                        <li v-for="(item,index) of news" :key="index"><span class="icon"></span><span>{{item.title}}</span><span>{{item.ctime}}</span></li>
                    </ul>
                </div>
            </div>
        </main>
    </div>
</template>
<script>
//引入header.vue组件对象，临时命名为myHeader，将来组件标签就是<my-header>
import myHeader from "@/components/header.vue"
export default {    
    data(){
        return{
            bnner:[],
            img1:['http://127.0.0.1:5555/images/0511.jpg','http://127.0.0.1:5555/images/0512.jpg','http://127.0.0.1:5555/images/0513.jpg'],
            img2:['http://127.0.0.1:5555/images/0521.jpg','http://127.0.0.1:5555/images/0522.jpg','http://127.0.0.1:5555/images/0523.jpg'],
            img3:['http://127.0.0.1:5555/images/0531.jpg','http://127.0.0.1:5555/images/0532.jpg','http://127.0.0.1:5555/images/0533.jpg'],
            timer: null,
            mark:0,
            isShow:false,
            show:false,
            num:0,
            height:0,
            partners:[],
            newtype:[],
            news:[]
        }
    },
    created(){
        this.axios.get("http://127.0.0.1:5555/bnner").then(result=>{
            this.bnner=result.data.data;
            // console.log(this.bnner);
        }),
        this.axios.get("http://127.0.0.1:5555/partners").then(result=>{
            this.partners=result.data.data;
            // console.log(this.partners);
        }),
        this.axios.get("http://127.0.0.1:5555/news").then(result=>{
            this.newtype=result.data[0];
            this.news=result.data[1];
            console.log(this.news);
        })
        this.play(),
        this.scroll()
    },
    methods: {
        change(i) {
            this.mark = i;
            this.num=i;
        },
        autoPlay() {
            this.mark++
                if (this.mark === 4) {
                    this.mark = 0
                    return
                }
        },
        play() {
            setInterval(this.autoPlay, 3000)
        },
        stop(){
            clearInterval(this.auto);
        },
        showAside(){
            this.isShow=true;
        },
        close(){
            this.isShow=false;
            console.log(1);
        },
        autoScroll(){
            if (this.num<3) {
                this.num++;
            }else{
                this.num = 0
            }
        },
        scroll(){
            setInterval(this.autoScroll, 3000)
        }
    },
    computed: {
        transform:function () {
            return 'translateY(-' + this.num * 100+ '%)'
        }
    },
    //将header.vue设置为当前组件的子组件
    components:{
      myHeader
    }
}
</script>
<style>
    .app-container{
        padding:0;
        margin-top:80px;
    }
    .home .container {
        width: 100%;
        max-width:none;
        
    }
    /*轮播样式 */
    .clearfix {
        content: '';
        clear: both;
        display: block;
    }
    
    .bnner {
        width: 100%;
        height: 500px;
        margin: 0 auto;
        overflow: hidden;
        position: relative;
    }
    .slide {
        width: 100%;
        height: 500px;
    }
    
    .bnner li {
        position: absolute
    }
    
    .bnner li img {
        width: 100%;
        height: 500px;
    }
    /*轮播图标样式 */
    .bnner .bullet {
        width: 100%;
        position: absolute;
        bottom: 10px;
        margin: 0 auto;
        text-align: center;
        z-index: 10;
    }    
    .bnner .bullet span {
        width: 30px;
        height: 5px;
        border: 1px solid;
        background: white;
        display: inline-block;
        margin-right: 10px;
    }    
    .bnner .bullet span.active {
        background: red;
    }
    .image-enter-active {
        transform: translateX(0);
        transition: all 1s ease;
    }
    .image-leave-active {
        transform: translateX(-100%);
        transition: all 1s ease;
    }
    .image-enter {
        transform: translateX(100%)
    }
    .image-leave {
        transform: translateX(0)
    }
    /*侧边栏 */
    .aside{
        position: fixed;
        top: 0;
        right: 0;
        width: 40px;
        height: 100%;
        z-index: 18;
        background: url(http://127.0.0.1:5555/images/aside.jpg) center top repeat;
        box-shadow: -2px 0 10px rgba(0, 0, 0, 0.1);
        text-align:center;
        padding-top:80px;
    }
    .aside li{
        margin-top:40px;
    }
    .aside li a.active{
        background: #fff;
        transition: 0.5s all;
        color:rgb(10, 114, 233);
        display: block;
        width:40px;
        height: 50px;

    }
    .aside li a{
        color:white
    }
    .aside li a img{
        display:block;
        margin:0 auto;
    }
    /*侧边栏内容 */    
    .aside_box{
        width: 250px;
        height: 100%;
        background: #fff;
        overflow: hidden;
        z-index: 15;
        position: fixed;
        top: 0;
        right:40px;
        box-shadow: -2px 0 10px rgba(0, 0, 0, .1);
        transition: 0.8s all;
        -webkit-transition: 0.8s all;
    }
    .mybox-leave,.mybox-enter-active{
        width:250px;
        transition:all 0.2s linear;
    }
    .mybox-leave-active,.mybox-enter{
         width:0px !important;
    }
    .aside_box .title {
        background: url(http://127.0.0.1:5555/images/002.png) center top no-repeat;
        text-align: center;
        padding: 26px 0 2px 0;
        color: #fff;
    }
    .aside_box .title p:first-child{
        font-size:12px;
    }
    .aside_box .title p:last-child{
        font-size: 16px;
        margin: 5px 0;
    }
    .aside_box .choose{
        padding: 20px 0;
        border-bottom: solid 1px #399BEC;
        text-align:center;
    }
    .aside_box .choose h3{
        font-size: 16px;
        color: #333;
    }
    .aside_box .choose ul{
        margin: 15px 0 10px 0
    }
    .aside_box .choose ul li a{
        height:30px;
        line-height:30px;
        display:block;
        color: #666;
    }
    .aside_box .choose ul li a:hover {
        color:white;
        background: #3c9af2;
        
        -webkit-transform: scale3d(1,1, 1);
        transform: scale3d(1,1, 1);
        -webkit-transition: -webkit-transform 0.4s;
        transition: transform 0.4s;
    }
    .aside_box .time{
        color:#818181;
        font-size:12px;
        margin-left:0;
    }
    .aside_box .problem{
        padding-top:15px;
    }
    .aside_box .problem_title{
        padding-left:30px;
        color:#333;
        font-size:16px;
    }
    .aside_box .problem ul{
        padding: 10px 0 0 30px;
    }
    .aside_box .problem ul li{
        margin-bottom:8px;
    }
    .aside_box .problem ul li a:hover{
        color:#3c9af2;

    }
    .aside_box .problem ul li span {
        display: inline-block;
        width: 3px;
        height: 3px;
        border-radius: 100%;
        background: #3c9af2;
        margin: 3px 10px 3px 0;
        animation: none;
    }
    .aside_box .problem ul li a {
        font-size: 12px;
        color: #818181;
    }
    .aside_box .close {
        position: absolute;
        top: 5px;
        right: 8px;
        cursor: pointer;
    }
    .aside_box .close:hover{
        transform:rotate(360deg);
        transition: transform 0.8s;
    }
    /*我们的产品*/
    .product{
        width: 100%;
        text-align: center;
    }
    .product>h1{        
        font-size: 35px;        
        padding-top:100px;       
    }
    .product>p{
        font-size: 14px;
        color: #818181;
        padding-bottom:30px; 
    }
    .index_product{
        width: 85%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        position: absolute;
        margin-left: 6%;
        margin-top:20px;
        margin-bottom: 100px;
    }
    .index_product div{
        width:32%;
        height:150px;
        text-align: center;
        margin-bottom: 20px;
        color: white;
    }
    .index_product div img{
        padding-top: 30px;
    }
    .index_product div:first-child{
        background: url(http://127.0.0.1:5555/images/002.png) center no-repeat;
    }
    .index_product div:nth-child(2){
        background: url(http://127.0.0.1:5555/images/003.png) center no-repeat;
    }
    .index_product div:nth-child(3){
        background: url(http://127.0.0.1:5555/images/004.png) center no-repeat;
    }
    .index_product div:nth-child(4){
        background: url(http://127.0.0.1:5555/images/005.png) center no-repeat;
    }
    .index_product div:nth-child(5){
        background: url(http://127.0.0.1:5555/images/006.png) center no-repeat;
    }
    .index_product div:last-child{
        background: url(http://127.0.0.1:5555/images/007.png) center no-repeat;
    }
    /*数立方优势*/
    .advantage{
        background: url(http://127.0.0.1:5555/images/01411.jpg) center top no-repeat;
        width:100%;
        position:absolute;
        margin-top:450px;
        text-align:center;
        color: white;
        height:1500px;
    }
    .advantage .adv h1{
        font-size: 35px;        
        padding-top:50px; 
    }
    .advantage .adv p{
        font-size: 14px;

    }
    .advantage .index_adv{
        width: 90%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        position: absolute;
        margin-left: 8%;
        margin-top:80px;
        margin-bottom: 100px;
    }
    .advantage .index_adv div{
        width:32%;
        margin-bottom:40px;
        color: white;
        text-align: center;
        padding-left:10px;
    }
    .advantage .index_adv div img{
        float: left;
        
    }
    .advantage .index_adv div div{
        width:300px;
        float: left;
        text-align: left;
    }
    .advantage .index_adv div div p:first-child{
        font-size:18px;
    }
    .advantage .index_adv div div p:last-child{
        font-size: 14px;
    }
    /*数立方优势轮播 */
    .images_show{
        position:relative;
        width:80%;
        left:10%;
        top:500px;
    }
    .images_show .pc {
        position: relative;
        margin-top: -2%;
        max-width: 75%;
    }
    .images_show .pad {
        position: absolute;
        bottom: 2%;
        right: 0px;
        max-width: 40%;
        width: 100%;
    }
    .images_show .phone{
        position: absolute;
        bottom: 0;
        right: 38%;
        max-width: 15%;
        width: 100%;
    }
    .images_show .pic {
        overflow: hidden;
        position: absolute;
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        
    }
    .images_show .pic .item{
        transition:all 0.5s linear;
    }
    .images_show .pic .scroll{
        transition:none;
    }
    .images_show .pc .pic {
        top: 2.5%;
        bottom: 20%;
        left: 2.22%;
        right: 1.5%;
    }
    .images_show .pad .pic {
        top: 3%;
        bottom: 6%;
        left: 2%;
        right: 1.6%;
        overflow: hidden;
    }
    .images_show .phone .pic {
        top: 8%;
        bottom: 10.5%;
        left: 5%;
        right: 5%;
    }
    
    .images_show img{
        width:100%;
    }
    /*轮播圆点*/
    .images_show .circle{
        width: 120px;
        position: absolute;
        left: 50%;
        margin-left: -60px;
        bottom: -15%;
    }
    .images_show .circle span{
        display: inline-block;
        width: 15px;
        height:15px;
        border-radius: 50%;
        border: 1px solid rgb(16, 149, 231);
        margin-left:15px;
    }
    .images_show .circle span.active{
        background: rgb(16, 149, 231);
    }
    /*营销优势 */
    .market{
        padding: 100px 0;
        background: url(http://127.0.0.1:5555/images/0181.jpg) center top repeat;
        width:100%;
        position:absolute;
        margin-top:1900px;
        text-align:center;
        color:white;        
    }
    .market .index_market{
        width:90%;
        display:flex;
        justify-content: center;
        flex-wrap: wrap;
        height: 460px;
        margin:0 auto;
        margin-top:50px;
        
    }
    .market .index_market div.img{
        width:22%;
        height: 100%;
    }
    .market .index_market div.content{
        width:76%;
        height: 100%;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        padding-left:20px;
    }
    .market .index_market div.content div{
        width: 32%;
        background:white;
        margin-bottom: 10px;
        text-align: center;
        padding-top:60px;
    }
    .market .index_market div.content div img{
      margin-right: 10px;
    }
    .market .index_market div.content div p:nth-child(2){
        color:#606060;
        font-size: 16px;
        display: inline-block;
        padding-bottom: 15px;
    }
    .market .index_market div.content div p:last-child{
        color: #a5a5a5;
        font-size: 12px;
        margin-left:80px;
        width: 180px;
        text-align: left;
    }
    /*合作伙伴*/
    .partners{
        width: 100%;
        margin-top:2750px;
        text-align: center;
    }
    .partners .index_partner {
        width:85%;
        margin:40px auto;
        padding-bottom: 100px;
    }
    .partners .index_partner ul li{
        float: left;
        padding-right:15px;
        padding-bottom: 20px;
    }
    .partners .join{
        background: url(http://127.0.0.1:5555/images/033.jpg) center top repeat;
        text-align: center;
        margin-top:150px;
        height:360px;
        margin-bottom:100px;
        color: white;
    }
    .partners .join h1{
        padding-top:100px;
        font-size:36px;
    }
    .partners .join p{
        padding-top:20px;
        font-size: 18px;
        columns: #cecaca;
        padding-bottom: 50px;
    }
    .partners .join button{
        border-radius:5px;
        background: #3b9ff2;
        padding: 5px;
        color: white;
        width:150px;
    }
    .partners .join button:hover{
        border:1px solid #3b9ff2;
        background:none;
        color: #3b9ff2;
    }
    /*新闻中心*/
    .news{
        text-align: center;
        margin:0 auto; 
        margin-bottom:80px;      
    }
    .news .index-news{        
        width:80%;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        padding-top:50px;
        margin:auto;
    }
    .news .index-news .type{
        width:31%;
    }
    .news .index-news .type p{
        text-align: left;
        padding:30px 0 30px 0;
        font-size:16px;
        color: #333333;
    }
    .news .index-news ul{
        width:100%;
        text-align: left;
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    .news .index-news ul li{
        width:32%;
        line-height: 35px;
        color:#767676;
        font-size: 12px;
    }
    .news .index-news ul li span.icon{
        border-top:6px solid transparent;
        border-bottom:6px solid transparent;
        border-left:6px solid #767676;
        float: left;
        padding-left: 5px;
        margin-top:12px;
    }
    .news .index-news ul li span:nth-child(2){
        float: left;
    }
    .news .index-news ul li span:last-child{
        float: right;
        color:#ccc;
    }
</style>