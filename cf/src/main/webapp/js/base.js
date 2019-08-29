// JavaScript Document
$(function(){
	
	/*中间区域与顶部和底部内边距*/
	var headerH =$(".header_wrap").outerHeight(true);
	var footerH =$(".footer_wrap").outerHeight(true);
	$(".wrapper").css({"padding-top": headerH ,"padding-bottom":footerH});
	
	//select下拉框
	$(".select_wrap .select_text").each(function(){
	   if($(this).next("select").find("option:selected").length!=0){
		  $(this).text($(this).next("select").find("option:selected").text());   
	   };
	});
	$(".select_wrap select").change(function(){
		var _val=$(this).find("option:selected").text();
		$(this).parent(".select_wrap").find(".select_text").text(_val);
	});
	
	//当滚动条的位置处于距顶部500像素以下时，悬浮框出现
	$(window).scroll(function(){
	    if ($(window).scrollTop()>500){
		    $(".Rightside").fadeIn(1000);
	    }else{
		    $(".Rightside").fadeOut(1000);
	    }
    });
    //当点击跳转链接后，回到页面顶部位置
    $(".return_top").click(function(){
	    $('body,html').animate({scrollTop:0},500);
	    return false;
    });
	
	/*我的管理左侧导航*/
	$(".manage_Nav>li>div").on("click",function(){
	   if($(this).hasClass("show")){
		  $(this).removeClass("show"); 
		  $(this).siblings().slideUp();
	   }else{
		  $(this).addClass("show"); 
		  $(this).siblings().slideDown();  
	   }	
	})
})

/*服务分类*/
function category(){
	$(".category_list li").hover(function(){
		var _index=$(this).index();
		$(this).addClass("active").siblings().removeClass("active");
		// $(".category_wrap .category_item").eq(_index).addClass("active").siblings().removeClass("active");
	},function(){
		$(this).removeClass("active");
		// $(".category_wrap .category_item.active").removeClass("active");
	})
	// $(".category_wrap .category_item").hover(function(){
	// 	var _index=$(this).index();
	// 	$(this).addClass("active").siblings().removeClass("active");
	// 	$(".category_list li").eq(_index).addClass("active");
	// },function(){
	// 	$(this).removeClass("active");
	// 	$(".category_list li.active").removeClass("active");
	// })
	
}

/*广告轮播图*/
function BannerInit(){
	var _index=0;//初始化序列  
	var timePlay=null;
	var len=$(".banner_ul li").length;
	var s = '';
    for(var i=0;i<len;i++){
		s += '<li></li>';
	}
	$(".banner_btn").append(s);
	$(".banner_btn li:first-child").addClass("hover");
	$(".banner_ul li").eq(0).show().siblings("li").hide();//最开始显示第一张

	$(".banner_btn li").hover(function(){/*鼠标在上面*/ 
		clearInterval(timePlay);//清处定时播放器
		_index=$(this).index();//获取当前li序列号
		$(this).addClass("hover").siblings().removeClass("hover");//显示按扭
		//fadeIn  淡入  fadeOut 淡出  
		$(".banner_ul li").eq(_index).fadeIn().siblings("li").fadeOut();//显示图片
	},function(){/*鼠标移开*/
		autoPlay();//启用定时播放器
	});

	//自动轮播
	function autoPlay(){
		//设置定时器
		timePlay=setInterval(function(){
			_index++;
			if(_index<len){
				if(_index==len-1){_index=-1; }//变成-1 
				$(".banner_btn li").eq(_index).addClass("hover").siblings().removeClass("hover");//显示按扭
				$(".banner_ul li").eq(_index).fadeIn().siblings("li").fadeOut();//显示图片
				 
			}else{_index=-1;/*设置序列号为-1,跳到播放第一张图片*/}
		},2000);	
	};
	autoPlay();//调用和执行
	
}

function checkInit(){
	$('.i_check').on('click',function(){
		$(this).hasClass('i_checked')?$(this).removeClass('i_checked'):$(this).addClass('i_checked');
	})
}

//获取短信验证码
var t=60;
function TestGetCode(obj){
	if(t==0){
          obj.removeAttribute("disabled");
          obj.value="获取验证码";
          obj.style.background="#E6F5FF";
          obj.style.color="#0098FF";
          t=60;
          return;
     }else{
          obj.setAttribute("disabled",true);
          obj.value="重新发送("+t+")";
          obj.style.background="grey";
          obj.style.color="#ccc";
          t--;
     }
     setTimeout(function(){TestGetCode(obj)},1000);
}