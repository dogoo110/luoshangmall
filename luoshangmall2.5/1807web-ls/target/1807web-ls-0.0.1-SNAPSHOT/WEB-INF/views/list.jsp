<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>限时秒杀商品</title>
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
        <meta content="yes" name="apple-mobile-web-app-capable"/>
        <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
        <meta content="telephone=no" name="format-detection"/>
        <link href="${app}/css/style_sec.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="${app}/js/jquery.min.js"></script>
		<script src="${app}/js/bootstrap.min.js"></script>
        
    </head>
    
    <body>
        <section class="aui-flexView">
            <header class="aui-navBar aui-navBar-fixed b-line">
                <a href="javascript:;" class="aui-navBar-item">
                    <i class="icon icon-return"></i>
                </a>
                <div class="aui-center">
                    <span class="aui-center-title">限时秒杀商品</span>
                </div>
                <a href="javascript:;" class="aui-navBar-item">
                    <i class="icon icon-share"></i>
                </a>
            </header>
            
            <section class="aui-scrollView">
                <div class="aui-flex" style="padding-bottom:2px;">
                    <div class="aui-flex-box">
                        <p>抢购中 数量有限下单先得哦</p>
                    </div>

                    <div class="aui-limit-time clearfix">
                        <div class="aui-fl-time">距结束还有</div>
                        <div class="time-item">
                            <span class="hour_show">00</span>
                            <em>:</em>
                            <span class="minute_show">00</span>
                            <em>:</em>
                            <span class="second_show">00</span>
                        </div>
                    </div>
                </div>
          
                <div class="aui-limit-box">
                
                <c:forEach var="sk" items="${list}">
                     <a href="javascript:;" class="aui-flex b-line">
                        <div class="aui-flex-time-img">
                            <img src="${sk.seckill.productImgurl}" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h2>${sk.seckill.name}</h2>
                            <h3>￥${sk.seckill.seckillPrice}</h3>
                            <h4>专柜价:￥${sk.seckill.initialPrice}</h4>
                            <div class="aui-flex aui-flex-clear-pa">
                                <div class="aui-flex-box">
                                    <div class="aui-flex-texts">
                                        <p>剩余${sk.seckill.number}</p>
                                    </div>
                                    <div class="aui-time-seep aui-flex-box">                                    
                                        <div class="aui-time-seep-go"  style="width:${sk.sheyu}"></div>
                                    </div>
                                </div>

                                <div class="aui-time-button">
                                 <button onclick="next(${sk.seckill.seckillId})">立即抢购</button>
                                </div>
                            </div>
                        </div>
                    </a>
                  </c:forEach>
                  
                </div>
            </section>
        </section>



	        <script type="text/javascript">
            var intDiff = parseInt(15000);
            //倒计时总秒数量

            function timer(intDiff) {
                window.setInterval(function() {
                    var day = 00
                        , hour = 00
                        , minute = 00
                        , second = 00;
                    //时间默认值
                    if (intDiff > 0) {
                        day = Math.floor(intDiff / (60 * 60 * 24));
                        hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
                        minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
                        second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
                    }
                    if (minute <= 9)
                        minute = '0' + minute;
                    if (second <= 9)
                        second = '0' + second;
                    $('.hour_show').html('0<s id="h"></s>' + hour + ' ');
                    $('.minute_show').html('<s></s>' + minute + ' ');
                    $('.second_show').html('<s></s>' + second + ' ');
                    intDiff--;
                }, 1000);
            }

            var next=function(id){
            	var before="/seckill/"+id;
            	var url=before+"/detail"
            	window.location.href=url;
            }
            
            $(function() {
                timer(intDiff);             
            });
        </script>
    </body>
</html>
