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
						<li><img src="${app}/img/T17QEgBj_T1RXrhCrK.jpg" alt=""></li>
						<li><img src="${app}/img/T1NDYgBX_v1RXrhCrK.jpg" alt=""></li>
						<li><img src="${app}/img/T1SShgB4Kv1RXrhCrK.jpg" alt=""></li>
						<li><img src="${app}/img/T1lVh_ByJv1RXrhCrK.jpg" alt=""></li>
						<li><img src="${app}/img/T1MvhgBXVv1RXrhCrK.jpg" alt=""></li>

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
												class="thumb" src="${app}/img/BURBERRY.jpg" width="40" height="40"
												alt=""><span class="text">博柏利BURBERRY</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=2"><img
												class="thumb" src="${app}/img/mi4.jpg" data-src="${app}/img/mi4.jpg"
												srcset="${app}/img/mi4.jpg" width="40" height="40" alt=""><span
												class="text">马克雅各布斯Marc Jacobs</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=3"><img
												class="thumb" src="${app}/img/mi4c.jpg" data-src="${app}/img/mi4c.jpg"
												srcset="${app}/img/mi4c.jpg" width="40" height="40" alt=""><span
												class="text">PORTS宝姿</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=4"><img
												class="thumb" src="${app}/img/note3.jpg" data-src="${app}/img/note3.jpg"
												srcset="${app}/img/note3.jpg" width="40" height="40" alt=""><span
												class="text">意大利PINKO</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=5"><img
												class="thumb" src="${app}/img/note2.jpg" data-src="${app}/img/note2.jpg"
												srcset="${app}/img/note2.jpg" width="40" height="40" alt=""><span
												class="text">JOAN&DAVID</span></a></li>
										<li class="star-goods"><a class="link" href="${app}/product/page?brandId=6"><img
												class="thumb" src="${app}/img/note.jpg" data-src="${app}/img/note.jpg"
												srcset="${app}/img/note.jpg" width="40" height="40" alt=""><span
												class="text">YSL圣罗兰</span></a></li>
									</ul>

								</div></li>
							<li class="category-item"><a class="title" href="#">成熟女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=7"><img class="thumb"
												src="${app}/img/tv40.jpg" data-src="${app}/img/tv40.jpg"
												srcset="${app}/img/tv40.jpg" width="40" height="40" alt=""><span
												class="text">Marisfrolg玛丝菲尔</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=8"><img class="thumb"
												src="${app}/img/tv48.jpg" data-src="${app}/img/tv48.jpg"
												srcset="${app}/img/tv48.jpg" width="40" height="40" alt=""><span
												class="text">KISTINA吉斯缇娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=9"><img class="thumb"
												src="${app}/img/tv3-55.jpg" data-src="${app}/img/tv3-55.jpg"
												srcset="${app}/img/tv3-55.jpg" width="40" height="40" alt=""><span
												class="text">NAERSI娜尔思</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=10"><img class="thumb"
												src="${app}/img/tv60.jpg" data-src="${app}/img/tv60.jpg"
												srcset="${app}/img/tv60.jpg" width="40" height="40" alt=""><span
												class="text">欧碧倩OBEG</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=11"><img class="thumb"
												src="${app}/img/tv70.jpg" data-src="${app}/img/tv70.jpg"
												srcset="${app}/img/tv70.jpg" width="40" height="40" alt=""><span
												class="text">AMASS阿玛施</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=12"><img class="thumb"
												src="${app}/img/tvzj.jpg" data-src="${app}/img/tvzj.jpg"
												srcset="${app}/img/tvzj.jpg" width="40" height="40" alt=""><span
												class="text">丽莱LILLY</span></a></li>
									</ul>
									
								</div></li>
							<li class="category-item"><a class="title" href="#">轻奢女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=13"><img class="thumb"
												src="${app}/img/miwifi.jpg" data-src="${app}/img/miwifi.jpg"
												srcset="${app}/img/miwifi.jpg" width="40" height="40" alt=""><span
												class="text">Ochirly欧时力</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=14"><img class="thumb"
												src="${app}/img/scooter.jpg" data-src="${app}/img/scooter.jpg"
												srcset="${app}/img/scooter.jpg" width="40" height="40" alt=""><span
												class="text">MO&Co摩安珂</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=15"><img class="thumb"
												src="${app}/img/shouhuan.jpg" data-src="${app}/img/shouhuan.jpg"
												srcset="${app}/img/shouhuan.jpg" width="40" height="40" alt=""><span
												class="text">DAZZLE地素</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=16"><img class="thumb"
												src="${app}/img/scale.jpg" data-src="${app}/img/scale.jpg"
												srcset="${app}/img/scale.jpg" width="40" height="40" alt=""><span
												class="text">ICICLE之禾</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=17"><img class="thumb"
												src="${app}/img/ihealthbluetooth.jpg"
												data-src="${app}/img/ihealthbluetooth.jpg"
												srcset="${app}/img/ihealthbluetooth.jpg" width="40" height="40"
												alt=""><span class="text">COLOVE卡拉佛</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=18"><img class="thumb"
												src="${app}/img/zhinengtaozhuang.jpg"
												data-src="${app}/img/zhinengtaozhuang.jpg"
												srcset="${app}/img/zhinengtaozhuang.jpg" width="40" height="40"
												alt=""><span class="text">OZZO欧尼迩</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">少淑女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=19"><img class="thumb"
												src="${app}/img/dianyuan.jpg" data-src="${app}/img/dianyuan.jpg"
												srcset="${app}/img/dianyuan.jpg" width="40" height="40" alt=""><span
												class="text">teenie weenie维尼熊</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=20"><img class="thumb"
												src="${app}/img/powerscript.jpg" data-src="${app}/img/powerscript.jpg"
												srcset="${app}/img/powerscript.jpg" width="40" height="40" alt=""><span
												class="text">AIVEI艾薇</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=21"><img class="thumb"
												src="${app}/img/yidongdianyuan.jpg"
												data-src="${app}/img/yidongdianyuan.jpg"
												srcset="${app}/img/yidongdianyuan.jpg" width="40" height="40"
												alt=""><span class="text">JESSY LINE杰西莱</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=22"><img class="thumb"
												src="${app}/img/dianyuanfujian.jpg"
												data-src="${app}/img/dianyuanfujian.jpg"
												srcset="${app}/img/dianyuanfujian.jpg" width="40" height="40"
												alt=""><span class="text">7Modifier莫丽菲儿</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=23"><img class="thumb"
												src="${app}/img/tunetune.jpg" data-src="${app}/img/tunetune.jpg"
												srcset="${app}/img/tunetune.jpg" width="40" height="40" alt=""><span
												class="text">tune tune</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=24"><img class="thumb"
												src="${app}/img/Snoopy.jpg" data-src="${app}/img/Snoopy.jpg"
												srcset="${app}/img/Snoopy.jpg" width="40" height="40" alt=""><span
												class="text">史努比SNOOPY</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">淑女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list children-list-col children-list-col-1">
										<li><a class="link" href="${app}/product/page?brandId=25"><img class="thumb"
												src="${app}/img/headphone.jpg" data-src="${app}/img/headphone.jpg"
												srcset="${app}/img/headphone.jpg" width="40" height="40" alt=""><span
												class="text">XG雪歌</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=26"><img class="thumb"
												src="${app}/img/quantie.jpg" data-src="${app}/img/quantie.jpg"
												srcset="${app}/img/quantie.jpg" width="40" height="40" alt=""><span
												class="text">BAGPIPE风笛</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=27"><img class="thumb"
												src="${app}/img/huosai.jpg" data-src="${app}/img/huosai.jpg"
												srcset="${app}/img/huosai.jpg" width="40" height="40" alt=""><span
												class="text">betu百图</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=28"><img class="thumb"
												src="${app}/img/xuancai.jpg" data-src="${app}/img/xuancai.jpg"
												srcset="${app}/img/xuancai.jpg" width="40" height="40" alt=""><span
												class="text">AZONA阿桑娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=29"><img class="thumb"
												src="${app}/img/bluetoothheadset.jpg"
												data-src="${app}/img/bluetoothheadset.jpg"
												srcset="${app}/img/bluetoothheadset.jpg" width="40" height="40"
												alt=""><span class="text">MIKIBANA米可芭娜</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=30"><img class="thumb"
												src="${app}/img/erji.jpg" data-src="${app}/img/erji.jpg"
												srcset="${app}/img/erji.jpg" width="40" height="40" alt=""><span
												class="text">EIFINIyifuli</span></a></li>
									</ul>

								</div></li>
							<li class="category-item"><a class="title" href="#">日系女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=31"><img class="thumb"
												src="${app}/img/5Battery1.jpg" data-src="${app}/img/5Battery1.jpg"
												srcset="${app}/img/5Battery1.jpg" width="40" height="40" alt=""><span
												class="text">ROEM洛妍</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=32"><img class="thumb"
												src="${app}/img/7Battery1.jpg" data-src="${app}/img/7Battery1.jpg"
												srcset="${app}/img/7Battery1.jpg" width="40" height="40" alt=""><span
												class="text">EnC</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=33"><img class="thumb"
												src="${app}/img/dianchi.jpg" data-src="${app}/img/dianchi.jpg"
												srcset="${app}/img/dianchi.jpg" width="40" height="40" alt=""><span
												class="text">SCAT</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=34"><img class="thumb"
												src="${app}/img/chongdian.jpg" data-src="${app}/img/chongdian.jpg"
												srcset="${app}/img/chongdian.jpg" width="40" height="40" alt=""><span
												class="text">W.DoubleuDOT达点</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=35"><img class="thumb"
												src="${app}/img/xiancai.jpg" data-src="${app}/img/xiancai.jpg"
												srcset="${app}/img/xiancai.jpg" width="40" height="40" alt=""><span
												class="text">Prich</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=36"><img class="thumb"
												src="${app}/img/cunchu.jpg" data-src="${app}/img/cunchu.jpg"
												srcset="${app}/img/cunchu.jpg" width="40" height="40" alt=""><span
												class="text">O'2nd奥蔻</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">台湾女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=37"><img class="thumb"
												src="${app}/img/baohu.jpg" data-src="${app}/img/baohu.jpg"
												srcset="${app}/img/baohu.jpg" width="40" height="40" alt=""><span
												class="text">JORYA卓雅</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=38"><img class="thumb"
												src="${app}/img/hougai.jpg" data-src="${app}/img/hougai.jpg"
												srcset="${app}/img/hougai.jpg" width="40" height="40" alt=""><span
												class="text">Pink Mary</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=39"><img class="thumb"
												src="${app}/img/jojo.jpg" data-src="${app}/img/jojo.jpg"
												srcset="${app}/img/jojo.jpg" width="40" height="40" alt=""><span
												class="text">Naturally JoJo</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=40"><img class="thumb"
												src="${app}/img/yilei.jpg" data-src="${app}/img/yilei.jpg"
												srcset="${app}/img/yilei.jpg" width="40" height="40" alt=""><span
												class="text">伊蕾名店</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=41"><img class="thumb"
												src="${app}/img/qiaobo.jpg" data-src="${app}/img/qiaobo.jpg"
												srcset="${app}/img/qiaobo.jpg" width="40" height="40" alt=""><span
												class="text">巧帛CHABER</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=42"><img class="thumb"
												src="${app}/img/berni.jpg" data-src="${app}/img/berni.jpg"
												srcset="${app}/img/berni.jpg" width="40" height="40" alt=""><span
												class="text">BERNINI贝尔尼尼</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">时尚女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=43"><img class="thumb"
												src="${app}/img/tiemo.jpg" data-src="${app}/img/tiemo.jpg"
												srcset="${app}/img/tiemo.jpg" width="40" height="40" alt=""><span
												class="text">PEACE BIRD太平鸟</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=44"><img class="thumb"
												src="${app}/img/zipaigan.jpg" data-src="${app}/img/zipaigan.jpg"
												srcset="${app}/img/zipaigan.jpg" width="40" height="40" alt=""><span
												class="text">杰西卡JESSICA</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=45"><img class="thumb"
												src="${app}/img/tizhi.jpg" data-src="${app}/img/tizhi.jpg"
												srcset="${app}/img/tizhi.jpg" width="40" height="40" alt=""><span
												class="text">esons</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=46"><img class="thumb"
												src="${app}/img/fangchensai.jpg" data-src="${app}/img/fangchensai.jpg"
												srcset="${app}/img/fangchensai.jpg" width="40" height="40" alt=""><span
												class="text">umisky/优美世界</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=47"><img class="thumb"
												src="${app}/img/zhijia.jpg" data-src="${app}/img/zhijia.jpg"
												srcset="${app}/img/zhijia.jpg" width="40" height="40" alt=""><span
												class="text">IHAPPY海贝</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=48"><img class="thumb"
												src="${app}/img/wifi.jpg" data-src="${app}/img/wifi.jpg"
												srcset="${app}/img/wifi.jpg" width="40" height="40" alt=""><span
												class="text">Sfenth诗凡诗</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">休闲女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=49"><img class="thumb"
												src="${app}/img/mitu.jpg" data-src="${app}/img/mitu.jpg"
												srcset="${app}/img/mitu.jpg" width="40" height="40" alt=""><span
												class="text">ONLY</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=50"><img class="thumb"
												src="${app}/img/fuzhuang.jpg" data-src="${app}/img/fuzhuang.jpg"
												srcset="${app}/img/fuzhuang.jpg" width="40" height="40" alt=""><span
												class="text">VERO MODA</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=51"><img class="thumb"
												src="${app}/img/aige.jpg" data-src="${app}/img/aige.jpg"
												srcset="${app}/img/aige.jpg" width="40" height="40" alt=""><span
												class="text">ETAM艾格</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=52"><img class="thumb"
												src="${app}/img/jiexiwu.jpg" data-src="${app}/img/jiexiwu.jpg"
												srcset="${app}/img/jiexiwu.jpg" width="40" height="40" alt=""><span
												class="text">JECCI FIVE(杰西伍)</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=53"><img class="thumb"
												src="${app}/img/huanzou.jpg" data-src="${app}/img/huanzou.jpg"
												srcset="${app}/img/huanzou.jpg" width="40" height="40" alt=""><span
												class="text">MOVEUP幻走</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=54"><img class="thumb"
												src="${app}/img/cos.jpg" data-src="${app}/img/cos.jpg"
												srcset="${app}/img/cos.jpg" width="40" height="40" alt=""><span
												class="text">COS</span></a></li>
									</ul>
								</div></li>
							<li class="category-item"><a class="title" href="#">商务女装<span
									class="glyphicon glyphicon-chevron-right"></span></a>
								<div class="children clearfix children-col-1">
									<ul class="children-list clearfix">
										<li><a class="link" href="${app}/product/page?brandId=55"><img class="thumb"
												src="${app}/img/bag.jpg" data-src="${app}/img/bag.jpg"
												srcset="${app}/img/bag.jpg" width="40" height="40" alt=""><span
												class="text">IVYKKI</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=56"><img class="thumb"
												src="${app}/img/lvxingxiang.jpg" data-src="${app}/img/lvxingxiang.jpg"
												srcset="${app}/img/lvxingxiang.jpg" width="40" height="40" alt=""><span
												class="text">LILY</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=57"><img class="thumb"
												src="${app}/img/shubiaodian.jpg" data-src="${app}/img/shubiaodian.jpg"
												srcset="${app}/img/shubiaodian.jpg" width="40" height="40" alt=""><span
												class="text">Theory</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=58"><img class="thumb"
												src="${app}/img/zhoubian1.jpg" data-src="${app}/img/zhoubian1.jpg"
												srcset="${app}/img/zhoubian1.jpg" width="40" height="40" alt=""><span
												class="text">EVA OUXIU伊华欧秀</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=59"><img class="thumb"
												src="${app}/img/wan.jpg" data-src="${app}/img/wan.jpg"
												srcset="${app}/img/wan.jpg" width="40" height="40" alt=""><span
												class="text">EVE.NY伊芙心悦</span></a></li>
										<li><a class="link" href="${app}/product/page?brandId=60"><img class="thumb"
												src="${app}/img/landi.jpg" data-src="${app}/img/landi.jpg"
												srcset="${app}/img/landi.jpg" width="40" height="40" alt=""><span
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
						<li><img src="${app}/img/dianhuaka.jpg" alt=""></li>
						<li><img src="${app}/img/notexianhuo.jpg" alt=""></li>
						<li><img src="${app}/img/jinghuaqi.jpg" alt=""></li>
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
					<img src="${app}/img/logo2.png" alt="">
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
					<a><img src="${app}/img/v-logo-2.png" alt="诚信网站"></ a>
						<a><img src="${app}/img/v-logo-1.png" alt="可信网站"></ a>
							<a><img src="${app}/img/v-logo-3.png" alt="网上交易保障中心"></
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