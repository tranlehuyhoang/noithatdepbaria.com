window.addEventListener('DOMContentLoaded', (event) => {
	var swiper = new Swiper('.home-slider', {
		autoplay: true,
		effect: 'fade',
		pagination: {
			el: '.section_slider .swiper-pagination',
			clickable: true,
		}
	});

	var projectSwiper = new Swiper('.project-slider', {
		slidesPerView: 1,
		loop: true,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.project-slider .swiper-pagination',
			clickable: true,
		},
		navigation: {
			nextEl: '.project-slider .swiper-button-next',
			prevEl: '.project-slider .swiper-button-prev',
		},
	});

	if ($('.cate-slider').length > 0) {
		var swiper = new Swiper('.cate-slider', {
			slidesPerView: 2.5,
			loop: false,
			grabCursor: true,
			spaceBetween: 30,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.section_cate .swiper-button-next',
				prevEl: '.section_cate .swiper-button-prev',
			},
			autoplay: false,
			breakpoints: {
				300: {
					slidesPerView: 1.2,
					spaceBetween: 10
				},
				500: {
					slidesPerView: 2
				},
				640: {
					slidesPerView: 2
				},
				768: {
					slidesPerView: 1.7
				},
				991: {
					slidesPerView: 2.5
				},
				1200: {
					slidesPerView: 2.5
				}
			}
		});
	}
	var swiperwish = new Swiper('.brand-swiper', {
		slidesPerView: 5,
		loop: false,
		grabCursor: true,
		spaceBetween: 30,
		roundLengths: true,
		slideToClickedSlide: false,
		autoplay: true,
		slidesPerColumn: 2,
		slidesPerColumnFill: 'row',
		breakpoints: {
			300: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			500: {
				slidesPerView: 2,
				spaceBetween: 10
			},
			640: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			768: {
				slidesPerView: 4,
				spaceBetween: 20
			},
			991: {
				slidesPerView: 5,
				spaceBetween: 20
			},
			1200: {
				slidesPerView: 5,
				spaceBetween: 20
			}
		}
	});
	if ($('.product_1-swiper').length > 0) {
		var swiper = new Swiper('.product_1-swiper', {
			slidesPerView: 2,
			loop: false,
			grabCursor: true,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.block-product-1 .swiper-button-next',
				prevEl: '.block-product-1 .swiper-button-prev',
			},
			breakpoints: {
				300: {
					pagination: {
						el: '.block-product-1 .swiper-pagination',
						clickable: true,
					}
				},
				700: {
					pagination: false
				}
			},
			autoplay: false
		});
	}
	if ($('.product_2-swiper').length > 0) {
		var swiper = new Swiper('.product_2-swiper', {
			slidesPerView: 2,
			loop: false,
			grabCursor: true,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.block-product-2 .swiper-button-next',
				prevEl: '.block-product-2 .swiper-button-prev',
			},
			breakpoints: {
				300: {
					pagination: {
						el: '.block-product-2 .swiper-pagination',
						clickable: true,
					}
				},
				700: {
					pagination: false
				}
			},
			autoplay: false
		});
	}
	if ($('.product_3-swiper').length > 0) {
		var swiper = new Swiper('.product_3-swiper', {
			slidesPerView: 2,
			loop: false,
			grabCursor: true,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.block-product-3 .swiper-button-next',
				prevEl: '.block-product-3 .swiper-button-prev',
			},
			breakpoints: {
				300: {
					pagination: {
						el: '.block-product-3 .swiper-pagination',
						clickable: true,
					}
				},
				700: {
					pagination: false
				}
			},
			autoplay: false
		});
	}
	if ($('.product_4-swiper').length > 0) {
		var swiper = new Swiper('.product_4-swiper', {
			slidesPerView: 2,
			loop: false,
			grabCursor: true,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.block-product-4 .swiper-button-next',
				prevEl: '.block-product-4 .swiper-button-prev',
			},
			breakpoints: {
				300: {
					pagination: {
						el: '.block-product-4 .swiper-pagination',
						clickable: true,
					}
				},
				700: {
					pagination: false
				}
			},
			autoplay: false
		});
	}
	if ($('.product_5-swiper').length > 0) {
		var swiper = new Swiper('.product_5-swiper', {
			slidesPerView: 2,
			loop: false,
			grabCursor: true,
			roundLengths: true,
			slideToClickedSlide: false,
			navigation: {
				nextEl: '.block-product-5 .swiper-button-next',
				prevEl: '.block-product-5 .swiper-button-prev',
			},
			breakpoints: {
				300: {
					pagination: {
						el: '.block-product-5 .swiper-pagination',
						clickable: true,
					}
				},
				700: {
					pagination: false
				}
			},
			autoplay: false
		});
	}
	var swiper = new Swiper('.swiper_feedback', {
		slidesPerView: 3,
		loop: false,
		grabCursor: true,
		spaceBetween: 20,
		roundLengths: true,
		slideToClickedSlide: false,
		autoplay: true,
		breakpoints: {
			300: {
				slidesPerView: 1
			},
			500: {
				slidesPerView: 2
			},
			640: {
				slidesPerView: 2
			},
			768: {
				slidesPerView: 2
			},
			991: {
				slidesPerView: 2
			},
			1200: {
				slidesPerView: 3
			}
		},
		pagination: {
			el: '.swiper_feedback .swiper-pagination',
			clickable: true
		}
	});
});
$('.product-item-flash .product-thumbs a').click(function(){
	if (!$(this).hasClass('text')) {
		var src = $(this).attr('href');
		$(this).parents('.product-thumbnail').find('.product-thumb img').attr('src',src);
		return false
	}
})
$(".not-dqtab").each( function(e){
	var $this1 = $(this);
	var $this2 = $(this);
	var datasection = $this1.closest('.not-dqtab').attr('data-section');
	$this1.find('.tabs-title .item:first-child').addClass('current');
	$this1.find('.tab-content').first().addClass('current');
	var _this = $(this).find('.wrap_tab_index .title_module_main');
	var droptab = $(this).find('.link_tab_check_click');
	$this1.find('.tabs-title li').click(function(){
		var $this2 = $(this),
			tab_id = $this2.attr('data-tab'),
			url = $this2.attr('data-url');
		var etabs = $this2.closest('.e-tabs');
		etabs.find('.tab-viewall').attr('href',url);
		etabs.find('.tabs-title li').removeClass('current');
		etabs.find('.tab-content').removeClass('current');
		$this2.addClass('current');
		etabs.find("."+tab_id).addClass('current');
		if(!$this2.hasClass('has-content')){
			$this2.addClass('has-content');		
			getContentTab(url,"."+ datasection+" ."+tab_id);
		}
	});
});
function getContentTab(url,selector){
	url = url+"?view=ajaxload";
	var loading = '<div class="text-center"><img src="//bizweb.dktcdn.net/100/501/740/themes/929449/assets/rolling.svg?1726189697911" alt="loading"/></div>';
	$.ajax({
		type: 'GET',
		url: url,
		beforeSend: function() {
			$(selector).html(loading);
		},
		success: function(data) {
			var content = $(data);
			setTimeout(function(){
				$(selector).html(content.html());
				let arrImg = document.querySelector(selector).querySelectorAll('.lazyload');
				arrImg.forEach((v) => { io.observe(v);})
				$(selector + ' .add_to_cart').click(function(e){	
					e.preventDefault();		
					var $this = $(this);
					var form = $this.parents('form');	
					$.ajax({
						type: 'POST',
						url: '/cart/add.js',
						async: false,
						data: form.serialize(),
						dataType: 'json',
						beforeSend: function() { },
						success: function(line_item) {
							$('.cart-popup-name').html(line_item.title).attr('href', line_item.url, 'title', line_item.title);
							ajaxCart.load();
							$('#popup-cart-desktop, .cart-sidebars, .backdrop__body-backdrop___1rvky').addClass('active');
						},
						cache: false
					});
				});
				if (window.BPR !== undefined){
					return window.BPR.initDomEls(), window.BPR.loadBadges();
				}
			},500);
		},
		dataType: "html"
	});
}