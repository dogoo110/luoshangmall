<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="${app}/js/jquery.min.js"></script> 
		<script src="${app}/js/myapp.js"></script>
		<script src="${app}/js/jump.js"></script>
		<script>
          $(function(){
             $(".list2 img").each(function(k,img){
              new JumpObj(img,10);
              //第一个参数代表元素对象
              //第二个参数代表抖动幅度
            });
             
          });

     </script>
		<script src="${app}/js/bootstrap.js"></script>

<title>罗裳官网</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${app}/css/bootstrap.css">
<link rel="stylesheet" href="${app}/css/mystyle.css">
</head>
<body id="top">
	<!--******************************bar栏*****************************************-->
<%@include file="/head.jsp" %>
	<!--***********************轮播***************************-->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="box">
					<ul class="ull">
						<li><img src="http://image.luoshangmall.cn/T17QEgBj_T1RXrhCrK.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/T1NDYgBX_v1RXrhCrK.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/T1SShgB4Kv1RXrhCrK.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/T1lVh_ByJv1RXrhCrK.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/T1MvhgBXVv1RXrhCrK.jpg" alt=""></li>

					</ul>
					<ol class="oll">

					</ol>
					<span class="left btnL glyphicon glyphicon-menu-right"></span> <span
						class="right btnL glyphicon glyphicon-menu-left"></span>
					<!--****************************轮播top菜单导航************************-->
					<div class="site-category">
						<ul id="J_categoryList" class="site-category-list clearfix">
							<li class="category-item"><a class="title" href="#">奢侈女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=1"><img
												class="thumb" src="http://image.luoshangmall.cn/BURBERRY.jpg" width="40" height="40"
												alt=""><span class="text">博柏利BURBERRY</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=2"><img
												class="thumb" src="http://image.luoshangmall.cn/mi4.jpg" data-src="http://image.luoshangmall.cn/mi4.jpg"
												srcset="http://image.luoshangmall.cn/mi4.jpg" width="40" height="40" alt=""><span
												class="text">马克雅各布斯Marc Jacobs</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=3"><img
												class="thumb" src="http://image.luoshangmall.cn/mi4c.jpg" data-src="http://image.luoshangmall.cn/mi4c.jpg"
												srcset="http://image.luoshangmall.cn/mi4c.jpg" width="40" height="40" alt=""><span
												class="text">PORTS宝姿</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=4"><img
												class="thumb" src="http://image.luoshangmall.cn/note3.jpg" data-src="http://image.luoshangmall.cn/note3.jpg"
												srcset="http://image.luoshangmall.cn/note3.jpg" width="40" height="40" alt=""><span
												class="text">意大利PINKO</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=5"><img
												class="thumb" src="http://image.luoshangmall.cn/note2.jpg" data-src="http://image.luoshangmall.cn/note2.jpg"
												srcset="http://image.luoshangmall.cn/note2.jpg" width="40" height="40" alt=""><span
												class="text">JOAN&DAVID</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=6"><img
												class="thumb" src="http://image.luoshangmall.cn/note.jpg" data-src="http://image.luoshangmall.cn/note.jpg"
												srcset="http://image.luoshangmall.cn/note.jpg" width="40" height="40" alt=""><span
												class="text">YSL圣罗兰</span></a></li>
									</ul>

								</div></li>
							<li class="category-item"><a class="title" href="#">成熟女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=7"><img class="thumb"
												src="http://image.luoshangmall.cn/tv40.jpg" data-src="http://image.luoshangmall.cn/tv40.jpg"
												srcset="http://image.luoshangmall.cn/tv40.jpg" width="40" height="40" alt=""><span
												class="text">Marisfrolg玛丝菲尔</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=8"><img class="thumb"
												src="http://image.luoshangmall.cn/tv48.jpg" data-src="http://image.luoshangmall.cn/tv48.jpg"
												srcset="http://image.luoshangmall.cn/tv48.jpg" width="40" height="40" alt=""><span
												class="text">KISTINA吉斯缇娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=9"><img class="thumb"
												src="http://image.luoshangmall.cn/tv3-55.jpg" data-src="http://image.luoshangmall.cn/tv3-55.jpg"
												srcset="http://image.luoshangmall.cn/tv3-55.jpg" width="40" height="40" alt=""><span
												class="text">NAERSI娜尔思</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=10"><img class="thumb"
												src="http://image.luoshangmall.cn/tv60.jpg" data-src="http://image.luoshangmall.cn/tv60.jpg"
												srcset="http://image.luoshangmall.cn/tv60.jpg" width="40" height="40" alt=""><span
												class="text">欧碧倩OBEG</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=11"><img class="thumb"
												src="http://image.luoshangmall.cn/tv70.jpg" data-src="http://image.luoshangmall.cn/tv70.jpg"
												srcset="http://image.luoshangmall.cn/tv70.jpg" width="40" height="40" alt=""><span
												class="text">AMASS阿玛施</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=12"><img class="thumb"
												src="http://image.luoshangmall.cn/tvzj.jpg" data-src="http://image.luoshangmall.cn/tvzj.jpg"
												srcset="http://image.luoshangmall.cn/tvzj.jpg" width="40" height="40" alt=""><span
												class="text">丽莱LILLY</span></a></li>
									</ul>
									
								</div></li>
							<li class="category-item"><a class="title" href="#">轻奢女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=13"><img class="thumb"
												src="http://image.luoshangmall.cn/miwifi.jpg" data-src="http://image.luoshangmall.cn/miwifi.jpg"
												srcset="http://image.luoshangmall.cn/miwifi.jpg" width="40" height="40" alt=""><span
												class="text">Ochirly欧时力</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=14"><img class="thumb"
												src="http://image.luoshangmall.cn/scooter.jpg" data-src="http://image.luoshangmall.cn/scooter.jpg"
												srcset="http://image.luoshangmall.cn/scooter.jpg" width="40" height="40" alt=""><span
												class="text">MO&Co摩安珂</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=15"><img class="thumb"
												src="http://image.luoshangmall.cn/shouhuan.jpg" data-src="http://image.luoshangmall.cn/shouhuan.jpg"
												srcset="http://image.luoshangmall.cn/shouhuan.jpg" width="40" height="40" alt=""><span
												class="text">DAZZLE地素</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=16"><img class="thumb"
												src="http://image.luoshangmall.cn/scale.jpg" data-src="http://image.luoshangmall.cn/scale.jpg"
												srcset="http://image.luoshangmall.cn/scale.jpg" width="40" height="40" alt=""><span
												class="text">ICICLE之禾</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=17"><img class="thumb"
												src="http://image.luoshangmall.cn/ihealthbluetooth.jpg"
												data-src="http://image.luoshangmall.cn/ihealthbluetooth.jpg"
												srcset="http://image.luoshangmall.cn/ihealthbluetooth.jpg" width="40" height="40"
												alt=""><span class="text">COLOVE卡拉佛</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=18"><img class="thumb"
												src="http://image.luoshangmall.cn/zhinengtaozhuang.jpg"
												data-src="http://image.luoshangmall.cn/zhinengtaozhuang.jpg"
												srcset="http://image.luoshangmall.cn/zhinengtaozhuang.jpg" width="40" height="40"
												alt=""><span class="text">OZZO欧尼迩</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">少淑女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=19"><img class="thumb"
												src="http://image.luoshangmall.cn/dianyuan.jpg" data-src="http://image.luoshangmall.cn/dianyuan.jpg"
												srcset="http://image.luoshangmall.cn/dianyuan.jpg" width="40" height="40" alt=""><span
												class="text">teenie weenie维尼熊</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=20"><img class="thumb"
												src="http://image.luoshangmall.cn/powerscript.jpg" data-src="http://image.luoshangmall.cn/powerscript.jpg"
												srcset="http://image.luoshangmall.cn/powerscript.jpg" width="40" height="40" alt=""><span
												class="text">AIVEI艾薇</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=21"><img class="thumb"
												src="http://image.luoshangmall.cn/yidongdianyuan.jpg"
												data-src="http://image.luoshangmall.cn/yidongdianyuan.jpg"
												srcset="http://image.luoshangmall.cn/yidongdianyuan.jpg" width="40" height="40"
												alt=""><span class="text">JESSY LINE杰西莱</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=22"><img class="thumb"
												src="http://image.luoshangmall.cn/dianyuanfujian.jpg"
												data-src="http://image.luoshangmall.cn/dianyuanfujian.jpg"
												srcset="http://image.luoshangmall.cn/dianyuanfujian.jpg" width="40" height="40"
												alt=""><span class="text">7Modifier莫丽菲儿</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=23"><img class="thumb"
												src="http://image.luoshangmall.cn/tunetune.jpg" data-src="http://image.luoshangmall.cn/tunetune.jpg"
												srcset="http://image.luoshangmall.cn/tunetune.jpg" width="40" height="40" alt=""><span
												class="text">tune tune</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=24"><img class="thumb"
												src="http://image.luoshangmall.cn/Snoopy.jpg" data-src="http://image.luoshangmall.cn/Snoopy.jpg"
												srcset="http://image.luoshangmall.cn/Snoopy.jpg" width="40" height="40" alt=""><span
												class="text">史努比SNOOPY</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">淑女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=25"><img class="thumb"
												src="http://image.luoshangmall.cn/headphone.jpg" data-src="http://image.luoshangmall.cn/headphone.jpg"
												srcset="http://image.luoshangmall.cn/headphone.jpg" width="40" height="40" alt=""><span
												class="text">XG雪歌</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=26"><img class="thumb"
												src="http://image.luoshangmall.cn/quantie.jpg" data-src="http://image.luoshangmall.cn/quantie.jpg"
												srcset="http://image.luoshangmall.cn/quantie.jpg" width="40" height="40" alt=""><span
												class="text">BAGPIPE风笛</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=27"><img class="thumb"
												src="http://image.luoshangmall.cn/huosai.jpg" data-src="http://image.luoshangmall.cn/huosai.jpg"
												srcset="http://image.luoshangmall.cn/huosai.jpg" width="40" height="40" alt=""><span
												class="text">betu百图</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=28"><img class="thumb"
												src="http://image.luoshangmall.cn/xuancai.jpg" data-src="http://image.luoshangmall.cn/xuancai.jpg"
												srcset="http://image.luoshangmall.cn/xuancai.jpg" width="40" height="40" alt=""><span
												class="text">AZONA阿桑娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=29"><img class="thumb"
												src="http://image.luoshangmall.cn/bluetoothheadset.jpg"
												data-src="http://image.luoshangmall.cn/bluetoothheadset.jpg"
												srcset="http://image.luoshangmall.cn/bluetoothheadset.jpg" width="40" height="40"
												alt=""><span class="text">MIKIBANA米可芭娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=30"><img class="thumb"
												src="http://image.luoshangmall.cn/erji.jpg" data-src="http://image.luoshangmall.cn/erji.jpg"
												srcset="http://image.luoshangmall.cn/erji.jpg" width="40" height="40" alt=""><span
												class="text">EIFINIyifuli</span></a></li>
									</ul>

								</div></li>
							<li class="category-item"><a class="title" href="#">日系女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=31"><img class="thumb"
												src="http://image.luoshangmall.cn/5Battery1.jpg" data-src="http://image.luoshangmall.cn/5Battery1.jpg"
												srcset="http://image.luoshangmall.cn/5Battery1.jpg" width="40" height="40" alt=""><span
												class="text">ROEM洛妍</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=32"><img class="thumb"
												src="http://image.luoshangmall.cn/7Battery1.jpg" data-src="http://image.luoshangmall.cn/7Battery1.jpg"
												srcset="http://image.luoshangmall.cn/7Battery1.jpg" width="40" height="40" alt=""><span
												class="text">EnC</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=33"><img class="thumb"
												src="http://image.luoshangmall.cn/dianchi.jpg" data-src="http://image.luoshangmall.cn/dianchi.jpg"
												srcset="http://image.luoshangmall.cn/dianchi.jpg" width="40" height="40" alt=""><span
												class="text">SCAT</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=34"><img class="thumb"
												src="http://image.luoshangmall.cn/chongdian.jpg" data-src="http://image.luoshangmall.cn/chongdian.jpg"
												srcset="http://image.luoshangmall.cn/chongdian.jpg" width="40" height="40" alt=""><span
												class="text">W.DoubleuDOT达点</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=35"><img class="thumb"
												src="http://image.luoshangmall.cn/xiancai.jpg" data-src="http://image.luoshangmall.cn/xiancai.jpg"
												srcset="http://image.luoshangmall.cn/xiancai.jpg" width="40" height="40" alt=""><span
												class="text">Prich</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=36"><img class="thumb"
												src="http://image.luoshangmall.cn/cunchu.jpg" data-src="http://image.luoshangmall.cn/cunchu.jpg"
												srcset="http://image.luoshangmall.cn/cunchu.jpg" width="40" height="40" alt=""><span
												class="text">O'2nd奥蔻</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">台湾女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=37"><img class="thumb"
												src="http://image.luoshangmall.cn/baohu.jpg" data-src="http://image.luoshangmall.cn/baohu.jpg"
												srcset="http://image.luoshangmall.cn/baohu.jpg" width="40" height="40" alt=""><span
												class="text">JORYA卓雅</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=38"><img class="thumb"
												src="http://image.luoshangmall.cn/hougai.jpg" data-src="http://image.luoshangmall.cn/hougai.jpg"
												srcset="http://image.luoshangmall.cn/hougai.jpg" width="40" height="40" alt=""><span
												class="text">Pink Mary</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=39"><img class="thumb"
												src="http://image.luoshangmall.cn/jojo.jpg" data-src="http://image.luoshangmall.cn/jojo.jpg"
												srcset="http://image.luoshangmall.cn/jojo.jpg" width="40" height="40" alt=""><span
												class="text">Naturally JoJo</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=40"><img class="thumb"
												src="http://image.luoshangmall.cn/yilei.jpg" data-src="http://image.luoshangmall.cn/yilei.jpg"
												srcset="http://image.luoshangmall.cn/yilei.jpg" width="40" height="40" alt=""><span
												class="text">伊蕾名店</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=41"><img class="thumb"
												src="http://image.luoshangmall.cn/qiaobo.jpg" data-src="http://image.luoshangmall.cn/qiaobo.jpg"
												srcset="http://image.luoshangmall.cn/qiaobo.jpg" width="40" height="40" alt=""><span
												class="text">巧帛CHABER</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=42"><img class="thumb"
												src="http://image.luoshangmall.cn/berni.jpg" data-src="http://image.luoshangmall.cn/berni.jpg"
												srcset="http://image.luoshangmall.cn/berni.jpg" width="40" height="40" alt=""><span
												class="text">BERNINI贝尔尼尼</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">时尚女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=43"><img class="thumb"
												src="http://image.luoshangmall.cn/tiemo.jpg" data-src="http://image.luoshangmall.cn/tiemo.jpg"
												srcset="http://image.luoshangmall.cn/tiemo.jpg" width="40" height="40" alt=""><span
												class="text">PEACE BIRD太平鸟</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=44"><img class="thumb"
												src="http://image.luoshangmall.cn/zipaigan.jpg" data-src="http://image.luoshangmall.cn/zipaigan.jpg"
												srcset="http://image.luoshangmall.cn/zipaigan.jpg" width="40" height="40" alt=""><span
												class="text">杰西卡JESSICA</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=45"><img class="thumb"
												src="http://image.luoshangmall.cn/tizhi.jpg" data-src="http://image.luoshangmall.cn/tizhi.jpg"
												srcset="http://image.luoshangmall.cn/tizhi.jpg" width="40" height="40" alt=""><span
												class="text">esons</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=46"><img class="thumb"
												src="http://image.luoshangmall.cn/fangchensai.jpg" data-src="http://image.luoshangmall.cn/fangchensai.jpg"
												srcset="http://image.luoshangmall.cn/fangchensai.jpg" width="40" height="40" alt=""><span
												class="text">umisky/优美世界</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=47"><img class="thumb"
												src="http://image.luoshangmall.cn/zhijia.jpg" data-src="http://image.luoshangmall.cn/zhijia.jpg"
												srcset="http://image.luoshangmall.cn/zhijia.jpg" width="40" height="40" alt=""><span
												class="text">IHAPPY海贝</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=48"><img class="thumb"
												src="http://image.luoshangmall.cn/wifi.jpg" data-src="http://image.luoshangmall.cn/wifi.jpg"
												srcset="http://image.luoshangmall.cn/wifi.jpg" width="40" height="40" alt=""><span
												class="text">Sfenth诗凡诗</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">休闲女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=49"><img class="thumb"
												src="http://image.luoshangmall.cn/mitu.jpg" data-src="http://image.luoshangmall.cn/mitu.jpg"
												srcset="http://image.luoshangmall.cn/mitu.jpg" width="40" height="40" alt=""><span
												class="text">ONLY</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=50"><img class="thumb"
												src="http://image.luoshangmall.cn/fuzhuang.jpg" data-src="http://image.luoshangmall.cn/fuzhuang.jpg"
												srcset="http://image.luoshangmall.cn/fuzhuang.jpg" width="40" height="40" alt=""><span
												class="text">VERO MODA</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=51"><img class="thumb"
												src="http://image.luoshangmall.cn/aige.jpg" data-src="http://image.luoshangmall.cn/aige.jpg"
												srcset="http://image.luoshangmall.cn/aige.jpg" width="40" height="40" alt=""><span
												class="text">ETAM艾格</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=52"><img class="thumb"
												src="http://image.luoshangmall.cn/jiexiwu.jpg" data-src="http://image.luoshangmall.cn/jiexiwu.jpg"
												srcset="http://image.luoshangmall.cn/jiexiwu.jpg" width="40" height="40" alt=""><span
												class="text">JECCI FIVE(杰西伍)</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=53"><img class="thumb"
												src="http://image.luoshangmall.cn/huanzou.jpg" data-src="http://image.luoshangmall.cn/huanzou.jpg"
												srcset="http://image.luoshangmall.cn/huanzou.jpg" width="40" height="40" alt=""><span
												class="text">MOVEUP幻走</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=54"><img class="thumb"
												src="http://image.luoshangmall.cn/cos.jpg" data-src="http://image.luoshangmall.cn/cos.jpg"
												srcset="http://image.luoshangmall.cn/cos.jpg" width="40" height="40" alt=""><span
												class="text">COS</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">商务女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=55"><img class="thumb"
												src="http://image.luoshangmall.cn/bag.jpg" data-src="http://image.luoshangmall.cn/bag.jpg"
												srcset="http://image.luoshangmall.cn/bag.jpg" width="40" height="40" alt=""><span
												class="text">IVYKKI</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=56"><img class="thumb"
												src="http://image.luoshangmall.cn/lvxingxiang.jpg" data-src="http://image.luoshangmall.cn/lvxingxiang.jpg"
												srcset="http://image.luoshangmall.cn/lvxingxiang.jpg" width="40" height="40" alt=""><span
												class="text">LILY</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=57"><img class="thumb"
												src="http://image.luoshangmall.cn/shubiaodian.jpg" data-src="http://image.luoshangmall.cn/shubiaodian.jpg"
												srcset="http://image.luoshangmall.cn/shubiaodian.jpg" width="40" height="40" alt=""><span
												class="text">Theory</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=58"><img class="thumb"
												src="http://image.luoshangmall.cn/zhoubian1.jpg" data-src="http://image.luoshangmall.cn/zhoubian1.jpg"
												srcset="http://image.luoshangmall.cn/zhoubian1.jpg" width="40" height="40" alt=""><span
												class="text">EVA OUXIU伊华欧秀</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=59"><img class="thumb"
												src="http://image.luoshangmall.cn/wan.jpg" data-src="http://image.luoshangmall.cn/wan.jpg"
												srcset="http://image.luoshangmall.cn/wan.jpg" width="40" height="40" alt=""><span
												class="text">EVE.NY伊芙心悦</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=60"><img class="thumb"
												src="http://image.luoshangmall.cn/landi.jpg" data-src="http://image.luoshangmall.cn/landi.jpg"
												srcset="http://image.luoshangmall.cn/landi.jpg" width="40" height="40" alt=""><span
												class="text">LANDI蓝地</span></a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--**********************about开始**********************-->
	<div class="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="list1">
						<ul class="home-channel-list clearfix">
							<li class="top left"><a>时尚</a></li>
							<li class="top"><a>品味</a></li>
							<li class="top"><a>热门</a></li>
							<li class="left"><a>奢华</a></li>
							<li class=""><a>上流</a></li>
							<li class=""><a>魅力</a></li>
						</ul>
					</div>
					<ul class="list2">
						<li><img src="http://image.luoshangmall.cn/dianhuaka.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/notexianhuo.jpg" alt=""></li>
						<li><img src="http://image.luoshangmall.cn/jinghuaqi.jpg" alt=""></li>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<!--***************************footer******************************-->
	<div class="site-footer">
		<div class="container-fluid">
			<div class="footer-service">
				<ul class="list-service clearfix">
					<li><a rel="nofollow" ><span
							class="glyphicon glyphicon-wrench"></span>1分钟客服咨询</a></li>
					<li><a rel="nofollow" ><span
							class="glyphicon glyphicon-phone-alt"></span>7天无理由退货</a></li>
					<li><a rel="nofollow" ><span
							class="glyphicon glyphicon-usd"></span>15天免费换货</a></li>
					<li><a rel="nofollow" ><span
							class="glyphicon glyphicon-gift"></span>满150元包邮</a></li>
					<li><a rel="nofollow" ><span
							class="glyphicon glyphicon-map-marker"></span>520余家售后网点</a></li>
				</ul>
			</div>

		</div>
		<div class="site-info">
			<div class="container-fluid">
				<div class="logo2">
					<img src="http://image.luoshangmall.cn/logo2.png" alt="">
				</div>
				<div class="info-text">
					<p class="sites">
						<a>Marisfrolg玛丝菲尔</a><span class="sep">|</span> <a
							>GIRDEAR哥弟</a><span class="sep">|</span> <a>JZ玖姿</a><span
							class="sep">|</span> <a>LANCY朗姿</a><span class="sep">|</span>
						<a>teenie weenie维尼熊</ a><span class="sep">|</span> <a
							>AIVEI艾薇</a><span class="sep">|</span> <a>邻家女孩</a><span
							class="sep">|</span> <a>阿依莲</a><span class="sep">|</span>
							<a>justzzu新作</a><span class="sep">|</span> <a>金苑</a><span
							class="sep">|</span> <a>Lily Brown</a><span class="sep">|</span>
							<a>Collect Point</a>
					</p>
					<p>
						<a>luoshangmall.cn</a> 京ICP证110507号 京ICP备10046444号
						京公网安备1101080212535号 <a>京网文[2014]0059-0009号</a>
						违法和不良信息举报电话：185-0130-1238
					</p>
				</div>
				<div class="info-links">
					<a><img src="http://image.luoshangmall.cn/v-logo-2.png" alt="诚信网站"></ a>
						<a><img src="http://image.luoshangmall.cn/v-logo-1.png" alt="可信网站"></ a>
							<a><img src="http://image.luoshangmall.cn/v-logo-3.png" alt="网上交易保障中心"></
								a> 
				</div>
			</div>
		</div>
		<!--返回顶部-->
		<p id="back-to-top">
			<a href="#top"><span class="glyphicon glyphicon-menu-up"
				style="font-size: 30px; color: #ff6700;"></span>回到顶部</a>
		</p>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- 		<script src="js/jquery-1.11.3.min.js"></script>  -->
<!-- 		<script src="js/jquery.min.js"></script> 
		<script src="js/myapp.js"></script>
		<script src="js/jump.js"></script>
		<script>
          $(function(){
             $(".list2 img").each(function(k,img){
              new JumpObj(img,10);
              //第一个参数代表元素对象
              //第二个参数代表抖动幅度
            });
             
          });

     </script>
		<script src="./js/bootstrap.js"></script>  -->
</body>
</html>