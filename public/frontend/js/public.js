/*导航动画*/
$(function(){
	if(screen.width > 1200){ 
		$(window).scroll(function(){
			if($(window).scrollTop()>50){
				$(".navbar").css({
					top: '0',
					width: '100%',
				});
			}
			else if($(window).scrollTop()<50){
				$(".navbar").css({
					top:'50px',
					width: '1200px',
				});
			}
		})
	}
})
$(function(){ 
	$(window).scroll(function(){
		if($(window).scrollTop()>50){
			$(".navbar1").css({
				position: 'fixed',
				width: '100%',
			});
		}
		else if($(window).scrollTop()<50){
			$(".navbar1").css({
				position: '',
				width: '100%',
			});
		}
	})
})
$(function(){
	//最新资讯
	$(".zxbox .subNav").hover(function(){
		$(this).addClass("navnow").siblings().removeClass("navnow");
	});
})
$(function(){
	//活动筛选
	$(".sort li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
	});
})
$(function(){
	//价格、时间筛选小动画
    var titles = $(".sort .price >i");  
    titles.each(function( index ){
		$(this).click(function(){
		   $(this).addClass("unow").siblings().removeClass("unow");	   
		});
    });
    var titles1 = $(".sort .time >i");  
    titles1.each(function( index ){
		$(this).click(function(){
		   $(this).addClass("unow").siblings().removeClass("unow");	   
		});
    });
})



