var Main = {
	Popup: function(w,h,t,p){
		var LeftPosition=(screen.width)?(screen.width-w)/2:0;
		var TopPosition=(screen.height)?(screen.height-h)/2:0;

		window.open(p,t,'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars=no,toolbar=0,resizable=0,status=0');
	},

	MobileMenu: function(){
        /* no duplicate content*/
		var clone = $('#main-header .main-menu').clone();
		clone.attr('id', 'menu-mobile');
		$('body').append(clone);
        
        $('#main-header #logo .menu-toggle').click(function(){
            if(!$('#menu-mobile').hasClass('active')){
                $(this).removeClass('fa-bars').addClass('fa-close');
            } else {
                $(this).addClass('fa-bars').removeClass('fa-close');
            }
            
            $('#menu-mobile').css('top', $('#main-header').offset().top+'px');
            $('#menu-mobile').toggle();
            $('#menu-mobile').toggleClass('active');
        });
	},

	Modal: function(){
		$('[data-video-modal]').each(function(){
			$(this).click(function(){
				$.magnificPopup.open({
					type: 'iframe',
					items: {
						src: 'http://youtube.com/watch?v='+$(this).attr('data-video-modal')
					}
				});
			});
		});
	},

	Init: function(){
		(new WOW()).init();

		this.MobileMenu();
		this.Modal();
	}
};

$(document).ready(function(){
	Main.Init();
});