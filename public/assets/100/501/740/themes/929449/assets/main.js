window.awe = window.awe || {};
$(document).ready(function ($) {
	"use strict";
	search_smart();
	if(window.matchMedia('(min-width: 992px)').matches){
		horizontalNav().init()
		$(window).on('resize',()=>horizontalNav().init())
	}
	awe_backtotop();
	awe_tab();
});
var wDWs = $(window).width();
if (wDWs < 1200) {
	$('.menu-bar').on('click', function(){
		$('.menu-bar').toggleClass('current');
		$('.header-index').toggleClass('current');
		$('.header-nav').toggleClass('current');
		$('body').toggleClass('overflow');
		return false
	})
	$('.item-big li .arr').click(function(e){
		if($(this).hasClass('current')) {
			$(this).closest('ul').find('li, .arr').removeClass('current');
		} else {
			$(this).closest('ul').find('li, .arr').removeClass('current');
			$(this).closest('li').addClass('current');
			$(this).addClass('current');
		}
	});
}
if (wDWs < 768) {
	$('.form-search input').attr('placeholder','Tìm kiếm');
	$('.search-mb').click(function(){
		$('header.header .form-search').toggle();
	})
}
$('.dropdown-toggle').click(function() {
	$(this).parent().toggleClass('open'); 	
}); 
$('.btn-close').click(function() {
	$(this).parents('.dropdown').toggleClass('open');
});
$('.quenmk').on('click', function() {
	$('#login').toggleClass('hidden');
	$('.h_recover').slideToggle();
});
$('a[data-toggle="collapse"]').click(function(e){
	if ($(window).width() >= 767) { 
		e.preventDefault();
		e.stopPropagation();
	}
});
$('body').on('click','.product-item .option-swath .swatch label',function(){
	var img = $(this).data('scolor');
	$(this).parents('.product-item').find('.product-thumb img').attr('src',img);
})
$(".option-swath .swatch").each(function(index, elem) {
	var scrapImg = $(this).find(".swatch-element");
	if(scrapImg.length > 4 ) {
		var number = scrapImg.length - 4;
		$(this).attr('number',number);
		$(this).append('<span class="btn-num">+'+ number +'</span>');
	}
});
$(window).scroll(function () {
	if ( $(this).scrollTop() > 88 && !$('header.header').hasClass('fixed') ) {
		$('header.header').addClass('fixed');
	} else if ( $(this).scrollTop() <= 88 ) {
		$('header.header').removeClass('fixed');
	}
});
$(document).on('keydown','#qty, .number-sidebar',function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
$(document).on('click','.qtyplus',function(e){
	e.preventDefault();   
	fieldName = $(this).attr('data-field'); 
	var currentVal = parseInt($('input[data-field='+fieldName+']').val());
	if (!isNaN(currentVal)) { 
		$('input[data-field='+fieldName+']').val(currentVal + 1);
	} else {
		$('input[data-field='+fieldName+']').val(0);
	}
});
$(document).on('click','.qtyminus',function(e){
	e.preventDefault(); 
	fieldName = $(this).attr('data-field');
	var currentVal = parseInt($('input[data-field='+fieldName+']').val());
	if (!isNaN(currentVal) && currentVal > 1) {          
		$('input[data-field='+fieldName+']').val(currentVal - 1);
	} else {
		$('input[data-field='+fieldName+']').val(1);
	}
});
$(document).on('click','.overlay, .close-window, .btn-continue, .fancybox-close', function() {   
	awe.hidePopup('.awe-popup'); 
	setTimeout(function(){
		$('.loading').removeClass('loaded-content');
	},500);
	return false;
})
function getImageName(url) {
    return url.split('?')[0].split('/').pop();
}
function horizontalNav () {
	return {
		wrapper: $('.header .header-nav'),
		navigation: $('.header .header-nav .item-big'),
		item: $('.header .header-nav .item-big>li'),
		arrows: $('.navigation-arrows'),
		scrollStep: 0,
		totalStep: 0,
		transform: function(){
			return `translateY(-${this.scrollStep*100}%)` 
		},
		onCalcNavOverView: function(){
			let itemHeight = this.item.eq(0).outerHeight(),
				navHeight = this.navigation.height();
			return Math.ceil(navHeight/itemHeight)
		},
		handleArrowClick: function(e){
			this.totalStep = this.onCalcNavOverView()
			this.scrollStep = $(e.target).hasClass('prev') ? this.scrollStep - 1 : this.scrollStep + 1
			this.handleScroll()
		},
		handleScroll: function(){
			this.arrows.find('i').removeClass('disabled')
			if(this.totalStep - 1 <= this.scrollStep ){
				this.arrows.find('.next').addClass('disabled')
				this.scrollStep = this.totalStep - 1
			}
			if(this.scrollStep <= 0){
				this.arrows.find('.prev').addClass('disabled')
				this.scrollStep = 0
			}
			this.item.find('.a-img').css('transform', this.transform())
		},
		init:function(){
			this.totalStep = this.onCalcNavOverView()
			if(this.totalStep > 1){
				this.wrapper.addClass('overflow')
			} 
			this.handleScroll()
			this.arrows.find('i').click((e)=>this.handleArrowClick(e))
		}
	}	
}
function search_smart(){
	var preLoadLoadGif = $('<div class="spinner-border text-primary" role="status"><span class="sr-only">Loading...</span></div>');
	var searchTimeoutThrottle = 500;
	var searchTimeoutID = -1;
	var currReqObj = null;
	var $resultsBox = $('<div class="results-box" />').appendTo('.form-search');
	$('.form-search input[type="text"]').bind('keyup change', function(){
		if($(this).val().length > 2 && $(this).val() != $(this).data('oldval')) {
			$(this).data('oldval', $(this).val());
			if(currReqObj != null) currReqObj.abort();
			clearTimeout(searchTimeoutID);
			var $form = $(this).closest('form');
			var term = '*' + $form.find('input[name="query"]').val() + '*';
			var linkURL = $form.attr('action') + '?query=' + term + '&type=product';
			$resultsBox.html('<div class="evo-loading"><div class="spinner-border text-primary" role="status"><span class="sr-only">Loading...</span></div></div>');
			searchTimeoutID = setTimeout(function(){
				currReqObj = $.ajax({
					url: $form.attr('action'),
					async: false,
					data: {
						type: 'product',
						view: 'json',
						q: term
					},
					dataType: 'json',
					success: function(data){
						currReqObj = null;
						if(data.results_total == 0) {
							$resultsBox.html('<div class="note">Không có kết quả tìm kiếm</div>');
						} else {
							$resultsBox.empty();
							$.each(data.results, function(index, item){
								var xshow = 'wholesale';
								if(!(item.title.toLowerCase().indexOf(xshow) > -1)) {
									var $row = $('<a class="clearfix"></a>').attr('href', item.url).attr('title', item.title);
									$row.append('<div class="img"><img src="' + item.thumb + '" /></div>');
									$row.append('<div class="d-title">'+item.title+'</div>');
									$row.append('<div class="d-title d-price">'+item.price+'</div>');
									$resultsBox.append($row);
								}
							});
							$resultsBox.append('<a href="' + linkURL + '" class="note bold text-center" title="Xem tất cả">Xem tất cả</a>');
						}
					}
				});
			}, searchTimeoutThrottle);
		} else if ($(this).val().length <= 2) {
			$resultsBox.empty();
		}
	}).attr('autocomplete', 'off').data('oldval', '').bind('focusin', function(){
		$resultsBox.fadeIn(200);
	}).bind('click', function(e){
		e.stopPropagation();
	});
	$('body').bind('click', function(){
		$resultsBox.fadeOut(200);
	});
} window.search_smart=search_smart;
function awe_showLoading(selector) {
	var loading = $('.loader').html();
	$(selector).addClass("loading").append(loading); 
}  window.awe_showLoading=awe_showLoading;
function awe_hideLoading(selector) {
	$(selector).removeClass("loading"); 
	$(selector + ' .loading-icon').remove();
}  window.awe_hideLoading=awe_hideLoading;
function awe_showPopup(selector) {
	$(selector).addClass('active');
}  window.awe_showPopup=awe_showPopup;
function awe_hidePopup(selector) {
	$(selector).removeClass('active');
}  window.awe_hidePopup=awe_hidePopup;
function awe_convertVietnamese(str) { 
	str= str.toLowerCase();
	str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a"); 
	str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e"); 
	str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i"); 
	str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o"); 
	str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u"); 
	str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y"); 
	str= str.replace(/đ/g,"d"); 
	str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");
	str= str.replace(/-+-/g,"-");
	str= str.replace(/^\-+|\-+$/g,""); 
	return str; 
} window.awe_convertVietnamese=awe_convertVietnamese;
function awe_backtotop() { 
	$(window).scroll(function() {
		$(this).scrollTop() > 200 ? $('.backtop').addClass('show') : $('.backtop').removeClass('show')
	});
	$('.backtop').click(function() {
		return $("body,html").animate({
			scrollTop: 0
		}, 800), !1
	});
} window.awe_backtotop=awe_backtotop;
function awe_tab() {
	$(".e-tabs:not(.not-dqtab)").each( function(){
		$(this).find('.tabs-title li:first-child').addClass('current');
		$(this).find('.tab-content').first().addClass('current');
		$(this).find('.tabs-title li').click(function(e){
			var tab_id = $(this).attr('data-tab');
			var url = $(this).attr('data-url');
			$(this).closest('.e-tabs').find('.tab-viewall').attr('href',url);
			$(this).closest('.e-tabs').find('.tabs-title li').removeClass('current');
			$(this).closest('.e-tabs').find('.tab-content').removeClass('current');
			$(this).addClass('current');
			$(this).closest('.e-tabs').find("#"+tab_id).addClass('current');

		});    
	});
} window.awe_tab=awe_tab;
!function(a){"use strict";"function"==typeof define&&define.amd?define(["jquery"],a):a(jQuery)}(function(a){"use strict";function b(a){if(a instanceof Date)return a;if(String(a).match(g))return String(a).match(/^[0-9]*$/)&&(a=Number(a)),String(a).match(/\-/)&&(a=String(a).replace(/\-/g,"/")),new Date(a);throw new Error("Couldn't cast `"+a+"` to a date object.")}function c(a){return function(b){var c=b.match(/%(-|!)?[A-Z]{1}(:[^;]+;)?/gi);if(c)for(var e=0,f=c.length;f>e;++e){var g=c[e].match(/%(-|!)?([a-zA-Z]{1})(:[^;]+;)?/),i=new RegExp(g[0]),j=g[1]||"",k=g[3]||"",l=null;g=g[2],h.hasOwnProperty(g)&&(l=h[g],l=Number(a[l])),null!==l&&("!"===j&&(l=d(k,l)),""===j&&10>l&&(l="0"+l.toString()),b=b.replace(i,l.toString()))}return b=b.replace(/%%/,"%")}}function d(a,b){var c="s",d="";return a&&(a=a.replace(/(:|;|\s)/gi,"").split(/\,/),1===a.length?c=a[0]:(d=a[0],c=a[1])),1===Math.abs(b)?d:c}var e=100,f=[],g=[];g.push(/^[0-9]*$/.source),g.push(/([0-9]{1,2}\/){2}[0-9]{4}( [0-9]{1,2}(:[0-9]{2}){2})?/.source),g.push(/[0-9]{4}([\/\-][0-9]{1,2}){2}( [0-9]{1,2}(:[0-9]{2}){2})?/.source),g=new RegExp(g.join("|"));var h={Y:"years",m:"months",w:"weeks",d:"days",D:"totalDays",H:"hours",M:"minutes",S:"seconds"},i=function(b,c,d){this.el=b,this.$el=a(b),this.interval=null,this.offset={},this.instanceNumber=f.length,f.push(this),this.$el.data("countdown-instance",this.instanceNumber),d&&(this.$el.on("update.countdown",d),this.$el.on("stoped.countdown",d),this.$el.on("finish.countdown",d)),this.setFinalDate(c),this.start()};a.extend(i.prototype,{start:function(){null!==this.interval&&clearInterval(this.interval);var a=this;this.update(),this.interval=setInterval(function(){a.update.call(a)},e)},stop:function(){clearInterval(this.interval),this.interval=null,this.dispatchEvent("stoped")},pause:function(){this.stop.call(this)},resume:function(){this.start.call(this)},remove:function(){this.stop(),f[this.instanceNumber]=null,delete this.$el.data().countdownInstance},setFinalDate:function(a){this.finalDate=b(a)},update:function(){return 0===this.$el.closest("html").length?void this.remove():(this.totalSecsLeft=this.finalDate.getTime()-(new Date).getTime(),this.totalSecsLeft=Math.ceil(this.totalSecsLeft/1e3),this.totalSecsLeft=this.totalSecsLeft<0?0:this.totalSecsLeft,this.offset={seconds:this.totalSecsLeft%60,minutes:Math.floor(this.totalSecsLeft/60)%60,hours:Math.floor(this.totalSecsLeft/60/60)%24,days:Math.floor(this.totalSecsLeft/60/60/24)%7,totalDays:Math.floor(this.totalSecsLeft/60/60/24),weeks:Math.floor(this.totalSecsLeft/60/60/24/7),months:Math.floor(this.totalSecsLeft/60/60/24/30),years:Math.floor(this.totalSecsLeft/60/60/24/365)},void(0===this.totalSecsLeft?(this.stop(),this.dispatchEvent("finish")):this.dispatchEvent("update")))},dispatchEvent:function(b){var d=a.Event(b+".countdown");d.finalDate=this.finalDate,d.offset=a.extend({},this.offset),d.strftime=c(this.offset),this.$el.trigger(d)}}),a.fn.countdown=function(){var b=Array.prototype.slice.call(arguments,0);return this.each(function(){var c=a(this).data("countdown-instance");if(void 0!==c){var d=f[c],e=b[0];i.prototype.hasOwnProperty(e)?d[e].apply(d,b.slice(1)):null===String(e).match(/^[$A-Z_][0-9A-Z_$]*$/i)?(d.setFinalDate.call(d,e),d.start()):a.error("Method %s does not exist on jQuery.countdown".replace(/\%s/gi,e))}else new i(this,b[0],b[1])})}});
$('[data-countdown]').each(function() {
	var $this = $(this), finalDate = $(this).data('countdown');
	$this.countdown(finalDate, function(event) {
		if (event.type == 'finish') {
			$this.html(event.strftime('<b>Hết ưu đãi</b>'));
			$this.next().hide();
		} else {
			$this.html(event.strftime('<span><b>%D</b>Ngày</span><span class="point">:</span><span><b>%H</b>Giờ</span><span class="point">:</span><span><b>%M</b>Phút</span><span class="point">:</span><span><b>%S</b>Giây</span>'));
		}
	});
});
if(localStorage.last_viewed_products != undefined) {
	var last_viewd_pro_array = JSON.parse(localStorage.last_viewed_products);
	if(document.querySelector('.countviewed') != null) {
		document.querySelector('.countviewed').innerHTML = last_viewd_pro_array.length;
	}
}