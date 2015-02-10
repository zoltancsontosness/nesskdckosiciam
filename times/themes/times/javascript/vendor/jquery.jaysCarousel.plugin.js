/*jslint browser: true*/
/*global jQuery:false, Modernizr */
(function ($) {
    'use strict';
    $.fn.extend({
        jaysCarousel: function (options) {
            /* ===================================================

            jaysCarousel jQuery plugin

            Created by Zoltan Csontos - zoltan.csontos.dev@gmail.com
            License:
            - Use, modify, share as you whish
            - Leave credits in the header
            - Developed in January 2013
            - Version: 1.0.1

            ==================================================== */
            var defaults = {
                leftButton: 0,
                rightButton: 0,
                positionContainer: 0,
                speed: 5000,
                direction: "left",
                callback: 0
            },
                o = $.extend(defaults, options),
                /* ====================================================
                * carousel object
                ==================================================== */
                Carousel = function (parent, buttons, positionContainer, speed, direction, callback) {
                    // Public properties
                    this.parent = parent;
                    this.wrapper = $(this.parent).children('ul');
                    this.items = $(this.wrapper).children('li');
                    this.itemWidth = this.items.outerWidth();
                    this.lastPosition = 0;
                    this.buttons = buttons;
                    this.callback = callback;
                    this.positionContainer = $(positionContainer);
                    this.interval = function () {};
                    this.isMoving = false;
                    this.css3 = false;
                    /* ====================================================
                    * Set the mandatory CSS rules
                    ====================================================*/
                    this.addRules = function () {
                        var that = this;
                        this.parent.css('overflow', 'hidden');
                        this.wrapper.css({
                            'position': 'relative',
                            'width': (that.items.size() * that.itemWidth)
                        });
                        this.items.css({
                            'display': 'block',
                            'float': 'left',
                            'width': this.parent.width() + 'px'
                        });
                        // Css 3 specific rules
                        if ($.support.transition) {
                            this.css3 = true;
                            this.wrapper.css({
                                'transition': 'all 0.7s ease-in-out',
                                '-webkit-transition': 'all 0.7s ease-in-out',
                                '-moz-transition': 'all 0.7s ease-in-out',
                                '-o-transition': 'all 0.7s ease-in-out'
                            });
                        }
                        // Set the last possible position
                        this.lastPosition = this.wrapper.width() - this.itemWidth;
                    };
                    /* ====================================================
                    * Method for getting the CSS3 tranform value 
                    ==================================================== */
                    this.css3Units = function (element) {
                        var strMatrix = "",
                            matrix = [];
                        this.x = 0;
                        this.y = 0;
                        if (typeof element.css('transform') === "string") {
                            strMatrix = element.css('transform');
                        } else if (typeof element.css('-webkit-transform') === "string") {
                            strMatrix = element.css('-webkit-transform');
                        } else if (typeof element.css('-moz-transform') === "string") {
                            strMatrix = element.css('-moz-transform');
                        } else if (typeof element.css('-o-transform') === "string") {
                            strMatrix = element.css('-o-transform');
                        }
                        if (strMatrix.length > 4) {
                            matrix = strMatrix.substring(7, strMatrix.length - 1).split(', ');
                            this.x = matrix[4];
                            this.y = matrix[5];
                        }
                    };
                    /* ====================================================
                    * Function responsible for CSS3 animation
                    ==================================================== */
                    this.css3Move = function (direction, callback) {
                        this.isMoving = true;
                        var mod = "-",
                            that = this,
                            leftPosition = Math.abs(new this.css3Units(this.wrapper).x),
                            moveValue = Math.abs(leftPosition) + Math.abs(this.itemWidth),
                            positionMod = "next";
                        if (direction === "right") {
                            moveValue = Math.abs(leftPosition) - Math.abs(this.itemWidth);
                            positionMod = "prev";
                            if (leftPosition === 0) {
                                moveValue = this.lastPosition;
                                positionMod = "last";
                            }
                        } else if (this.lastPosition === leftPosition) {
                            moveValue = 0;
                            mod = "+";
                            positionMod = "first";
                        }
                        this.wrapper.css({
                            'transform': 'translate(' + mod + moveValue + 'px, 0)',
                            '-webkit-transform': 'translate(' + mod + moveValue + 'px, 0)',
                            '-moz-transform': 'translate(' + mod + moveValue + 'px, 0)',
                            '-o-transform': 'translate(' + mod + moveValue + 'px, 0)'
                        });
                        that.updatePositionIcons(positionMod);
                        this.wrapper.bind("webkitTransitionEnd transitionend msTransitionEnd oTransitionEnd", function() {
                            that.isMoving = false;
                            if (callback && typeof callback === "function") {
                                callback();
                            }
                        });
                    };
                    /* ====================================================
                    * Function responsible for moving the carousel
                    ==================================================== */
                    this.move = function (direction, callback) {
                        this.isMoving = true;
                        var mod = "-=",
                            that = this,
                            leftPosition = Math.abs(parseFloat(this.wrapper.css('left')).toFixed()),
                            moveValue = this.itemWidth,
                            positionMod = "next";
                        if (direction === "right") {
                            mod = "+=";
                            positionMod = "prev";
                            if (leftPosition === 0) {
                                mod = "-=";
                                moveValue = this.lastPosition;
                                positionMod = "last";
                            }
                        } else if (this.lastPosition === leftPosition) {
                            moveValue = this.lastPosition;
                            mod = "+=";
                            positionMod = "first";
                        }
                        this.wrapper.animate({
                            'left': mod + moveValue + 'px'
                        }, 700, function() {
                            that.isMoving = false;
                            that.updatePositionIcons(positionMod);
                            if (callback && typeof callback === "function") {
                                callback();
                            }
                        });
                    };
                    /* ====================================================
                    * Movement controller
                    ==================================================== */
                    this.moveController = function (direction, callback) {
                        if (this.css3 === true) {
                            this.css3Move(direction, callback);
                        } else {
                            this.move(direction, callback);
                        }
                    };
                    /* ====================================================
                    * Set the events for buttons
                    ==================================================== */
                    this.setButtonActions = function () {
                        var that = this,
                            leftButton = $(this.buttons[0]),
                            rightButton = $(this.buttons[1]);
                        leftButton.on('click', function (e) {
                            e.preventDefault();
                            if (that.isMoving === false) {
                                that.moveController("right", that.callback);
                            }
                        }).mouseover(function () {
                            clearTimeout(that.interval);
                        }).mouseout(function() {
                            that.interval = setTimeout(function() { that.init(); }, speed);
                        });
                        rightButton.on('click', function(e) {
                            e.preventDefault();
                            if (that.isMoving === false) {
                                that.moveController("left", that.callback);
                            }
                        }).mouseover(function () {
                            clearTimeout(that.interval);
                        }).mouseout(function() {
                            that.interval = setTimeout(function() { that.init(); }, speed);
                        });
                    };
                    /* ================================================
                    * Method responsible for the update of 
                    * the position markers
                    ================================================ */
                    this.updatePositionIcons = function (mod) {
                        var selectedElement = this.positionContainer.children('.selected'),
                            firstElement = this.positionContainer.children('span').first(),
                            lastElement = this.positionContainer.children('span').last(),
                            nextElement = selectedElement.next(),
                            prevElement = selectedElement.prev();
                        this.positionContainer.children('span').removeAttr('class');
                        switch (mod) {
                        case "first":
                            firstElement.addClass('selected');
                            break;
                        case "last":
                            lastElement.addClass('selected');
                            break;
                        case "next":
                            nextElement.addClass('selected');
                            break;
                        case "prev":
                            prevElement.addClass('selected');
                            break;
                        }
                    };
                    /* ================================================
                    * Method responsible for creatign position markers 
                    ================================================ */
                    this.createPositionIcons = function () {
                        var fragment = document.createDocumentFragment(),
                            item = document.createElement('span'),
                            i = 0;
                        while (i < this.items.size()) {
                            fragment.appendChild(item.cloneNode(true));
                            i += 1;
                        }
                        this.positionContainer.append(fragment).children('span').first().addClass('selected');
						this.positionContainer.children('span').html('&bull;');
                    };
                    // Call the mandatory methods
                    this.addRules();
                    this.setButtonActions();
                    this.createPositionIcons();
                    // Carousel initialisation
                    this.init = function () {
                        var that = this;
                        this.moveController(direction, this.callback);
                        this.interval = setTimeout(function() { that.init(); }, speed);
                    };
                };
            /* ========================================================
            * plugin initialisation
            ======================================================== */
            return this.each(function () {
                var buttons = 0,
                    positionContainer = 0,
                    carousel = 0,
                    direction = '',
                    speed = 0;
                if (o.leftButton !== 0 && o.rightButton !== 0) {
                    buttons = [];
                    buttons[0] = o.leftButton;
                    buttons[1] = o.rightButton;
                }
                if (o.speed !== 0) {
                    speed = o.speed;
                }
                if (o.direction !== 0) {
                    direction = o.direction;
                }
                if (o.positionContainer !== 0) {
                    positionContainer = o.positionContainer;
                }
                //parent, buttons, positionContainer, speed, direction, callback
                carousel = new Carousel($(this), buttons, positionContainer, speed, direction, o.callback);
                carousel.init();
            });
        }
    });
}(jQuery));