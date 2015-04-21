/**
 * =====================================================================================================
 * Cahl website javascript functionality class
 * @version: 1.0
 * @author: zoltan.csontos@gigup.eu
 * =====================================================================================================
 */
Cahl = {
	/**
	 * Class responsible for Countdown
	 * @version: 1.0
	 * @author: zoltan.csontos@gigup.eu
	 * @usage: 
	 * var translations = {
	 *	dayLabel : 'Days',
	 *	hrLabel : 'Hrs',
	 *	minLabel : 'Min',
	 *	secLabel : 'Sec'
	 * };
	 * Cahl.CountDown.init('targetElementSelector', new Date('some valid date string'), translations);
	 */
	CountDown : {
		/**
		 * Returns the current time
		 * @return int time
		 */
		now : function () {
			return new Date().getTime()
		},
		element : '',
		targetDate : '',
		counter : {},
		/**
		 * Default translation object
		 */
		translations : {
			dayLabel : 'Days',
			hrLabel : 'Hrs',
			minLabel : 'Min',
			secLabel : 'Sec'
		},
		/**
		 * Function responsible for time calculation and element update
		 * @param int timeObj
		 * @return void
		 */
		updateTime : function (timeObj) {
			Cahl.CountDown.element.innerHTML = "" +
			"<li><div>" + timeObj.days + "</div>" + Cahl.CountDown.translations.dayLabel + "</li>" + 
			"<li><div>" + timeObj.hours + "</div>" + Cahl.CountDown.translations.hrLabel + "</li>" + 
			"<li><div>" + timeObj.mins + "</div>" + Cahl.CountDown.translations.minLabel + "</li>" + 
			"<li><div>" + timeObj.secs + "</div>" + Cahl.CountDown.translations.secLabel + "</li>";
			Cahl.CountDown.setCounter();
		},
		/**
		 * Adds a leading zero if the number has only one digit
		 * @param int num
		 * @return string
		 */
		addLeadingZero : function (num) {
			var str = "";
			if (num < 10) {
				str = "0" + num.toString();
				return str;
			}
			str = num.toString();
			return str;
		},
		/**
		 * Calculates the actual distance
		 * @param time
		 */
		calculateTime : function (target, callback) {
			var timeDiff = Cahl.CountDown.targetDate - Cahl.CountDown.now(),
				secsLeft = timeDiff / 1000,
				
				days = parseInt(secsLeft / 86400);
				secsLeft = secsLeft % 86400;
				 
				hours = parseInt(secsLeft / 3600);
				secsLeft = secsLeft % 3600;
				  
				mins = parseInt(secsLeft / 60);
				secs = parseInt(secsLeft % 60);				
				
				timeObj = {
					days : Cahl.CountDown.addLeadingZero(days),
					hours : Cahl.CountDown.addLeadingZero(hours),
					mins : Cahl.CountDown.addLeadingZero(mins),
					secs : Cahl.CountDown.addLeadingZero(secs),
				};
			if (timeObj.days === 0 && timeObj.hours === 0 && timeObj.mins === 0 && timeObj.secs === 0) {
				Cahl.Countdown.stop();
			}
			if (typeof callback !== "undefined") {
				callback(timeObj);
			}
		},
		/**
		 * Sets the countdown
		 * @param function callback
		 * @return void
		 */
		setCounter : function () {
			var ctx = Cahl.CountDown;
			Cahl.CountDown.counter = setTimeout(function(){
				ctx.calculateTime(ctx.targetDate, ctx.updateTime);
			}, 1000);			
		},
		/**
		 * Method responsible for stopping the countdown
		 * @return void
		 */
		stop : function () {
			clearTimeout(Cahl.CountDown.counter);
		},
		/**
		 * Initialisation function
		 * @param String selector
		 * @param Date targetDate
		 * @param String translation
		 * @return void
		 */
		init : function (selector, targetDate, translations) {
			
			if (typeof translations !== "undefined") {
				Cahl.CountDown.translations = translations;
			}
			
			if (typeof targetDate !== "undefined") {
				Cahl.CountDown.targetDate = targetDate.getTime();
			}			
			
			if (typeof document.querySelectorAll(selector) !== "undefined") {
				Cahl.CountDown.element = document.querySelectorAll(selector)[0];
				return Cahl.CountDown.setCounter();
			}
			return false;
		}
	},
	/**
	 * News reader functionality
	 * @version 1.0
	 * @TODO: add functionality for background image switching
	 */
	NewsReader: {
		interval : function () {},
		/**
		 * Moves the news slider
		 * @param string direction
		 * @return void
		 */
		moveSlider : function (direction) {
			
			var activeSlide = $('#news-slider li.active'),
				activeMarker = $('#position-markers li.active'),
				
				firstSlide = $('#news-slider li').first(),
				firstMarker = $('#position-markers li').first(),
				
				prevSlide = activeSlide.prev(),
				prevMarker = activeMarker.prev(),
				
				lastSlide = $('#news-slider li').last(),
				lastMarker = $('#position-markers li').last(),
				
				nextSlide = activeSlide.next(),
				nextMarker = activeMarker.next();
				
			activeSlide.removeClass('active');
			activeMarker.removeClass('active');
			
			if (direction === "left") {
				if (prevSlide.length === 0) {
					lastSlide.addClass('active');
					lastMarker.addClass('active');
				} else {
					prevSlide.addClass('active');
					prevMarker.addClass('active');
				}
			} else {
				if (nextSlide.length === 0) {
					firstSlide.addClass('active');
					firstMarker.addClass('active');
				} else {
					nextSlide.addClass('active');	
					nextMarker.addClass('active');
				}
			}
			
		},
		/**
		 * Moves to a specific slide
		 * @param int pos
		 * @return void
		 */
		toggleSlide : function (pos) {
			var slides = $('#news-slider li'),
				markers = $('#position-markers li'),
				slideToToggle = $('#news-slider li').eq(pos),
				markerToToggle = $('#position-markers li').eq(pos);
			slides.removeClass('active');	
			markers.removeClass('active');	
			slideToToggle.addClass('active');
			markerToToggle.addClass('active');
		},
		/**
		 * Autoslides the newsreader in specified interval
		 * @param int interval
		 * @return void
		 */
		autoSlide : function (interval) {
		
			Cahl.NewsReader.interval = setTimeout(function () {
				Cahl.NewsReader.moveSlider('right');
				Cahl.NewsReader.autoSlide(interval);
			}, interval);
		},
		/**
		 * Init function
		 */
		init : function () {
			$('.arrow').on('click', function(e) {
				var direction = $(this).attr('data-direction');
				Cahl.NewsReader.moveSlider(direction);
			});
			
			$('.toggle-slide').on('click', function(e) {
				var pos = $(this).index();
				Cahl.NewsReader.toggleSlide(pos);
			});

			Cahl.NewsReader.autoSlide(5000);

			$('#news-slider, #position-markers, .arrow').on('hover', function() {
				clearTimeout(Cahl.NewsReader.interval);
			}).on('mouseleave', function() {
				Cahl.NewsReader.autoSlide(5000);
			});		
		}
	},
	/**
	 * All bindings go here
	 * @return void
	 */
	bindings: (function() {
		
		$(document).ready(function() {
			
			/* ===================================================
			 * News reader
			 * =================================================== */
			Cahl.NewsReader.init();
			
			/* ===================================================
			 * Mobile actions
			 * =================================================== */
			$('nav ul .mobile').on('click', function(e) {
				$('nav ul li').each(function() {
					if (!$(this).hasClass('mobile')) {
						$(this).toggle('show');
					}
				});
			});
		});
		
	})()
}