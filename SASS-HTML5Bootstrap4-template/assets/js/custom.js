$(document).ready(function(){
	$('.sidebar-menu-btn').click(function(){
		$('.slidebar').toggleClass('open');
		$('.has-sidebar').toggleClass('open');
		$(this).toggleClass('menu-open');
	});

	$('.menu-links li a').click(function(){
		if($(this).parent().hasClass('active')){
			$(this).next('ul').slideUp();
			$(this).parent().removeClass('active');
		}
		else{
			$(this).next('ul').slideDown();
			$(this).parent().addClass('active');
		}
	});

});


$(window).bind("load resize", function() {
	sizingheight();
});

function sizingheight(){
}