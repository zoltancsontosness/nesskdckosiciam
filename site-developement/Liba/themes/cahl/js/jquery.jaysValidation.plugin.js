(function($) {
    'use strict';
    $.fn.extend({
        jaysValidation: function(options) {
            /* =================================================== 
            
			jaysValidation form validation jQuery plugin
            
			Created by Zoltan Csontos - zoltan.csontos.dev@gmail.com
			License:
			- Use, modify, share as you whish
			- Leave credits in the header
			- Developed in January 2013
			
			==================================================== */
            var defaults = {
                    emptyFieldMessage: 'The field is mandatory and must be filled',
                    notValidEmailMessage: 'The provided email is not valid',
                    nanMessage: 'This field can contain only numeric values',
                    notValidPhoneMessage: 'Not valid phone format',
                    callback: null
                },
                o = $.extend(defaults, options),
                /*  ====================================================
			     *  validation object
                 *  ==================================================== */
                Validation = function(selector) {
                    this.parent = selector;
                    this.formElements = selector.find('input, select, textarea');
                    this.itemsSize = this.formElements.size();
                    // the property that holds all the form elements
                    this.formObj = [];
                    // Error messages
                    this.emptyFieldMessage = o.emptyFieldMessage;
                    this.notValidEmailMessage = o.notValidEmailMessage;
                    this.nanMessage = o.nanMessage;
                    this.notValidPhoneMessage = o.notValidPhoneMessage;
                    // Instance context
                    var context = this;
                    /*  ====================================================
                     *  Private method for email validation
                        ==================================================== */
                    var isValidEmail = function(input) {
                        if (input.indexOf('@') !== -1 || input.indexOf('.') !== -1) {
                            return true;
                        }
                        return false;
                    };
                    /*  ====================================================
                     *  Private method for numeric values validation
                        ==================================================== */
                    var isValidNumber = function(input) {
                        if (!isNaN(Number(input))) {
                            return true;
                        }
                        return false;
                    };
                    /*  ====================================================
                     *  Private method for decimal validation
                        ==================================================== */
                    var isDecimal = function(input) {
                        if (!isNaN(Number(input)) && Math.floor(Number(input)) !== 0) {
                            return true;
                        }
                        return false;
                    };
                    /*  ====================================================
                     *  Private method for setting up the field properties
                        ==================================================== */
                    var fieldProperties = function(isRequired, isEmail, isNumber, isPhone, value) {
                        var obj = {
                            'isRequired': isRequired,
                            'isEmail': isEmail,
                            'isNumber': isNumber,
                            'isPhone': isPhone,
                            'value': value
                        }
                        return obj;
                    };
                    /*  ====================================================
                     *  Private method for creatign the object for all fields
                        ==================================================== */
                    var createFormObj = function(context) {
                        var i = 0,
                            inputName = '',
                            isRequired = false,
                            isEmail = false,
                            isNumber = false,
                            isPhone = false,
                            value = '',
                            obj = [],
                            element = [];
                        if (context.itemsSize !== 0) {
                            while (i < context.itemsSize) {
                                element = context.formElements[i];
                                if ($(element).hasClass('validate')) {
                                    inputName = $(element).attr('name');
                                    isRequired = $(element).hasClass('required') ? true : false;
                                    isEmail = $(element).hasClass('email') ? true : false;
                                    isNumber = $(element).hasClass('number') ? true : false;
                                    isPhone = $(element).hasClass('phone') ? true : false;
                                    value = $(element).val() !== "" ? $(element).val() : null;
                                    obj = fieldProperties(isRequired, isEmail, isNumber, isPhone, value);
                                    context.formObj[inputName] = obj;
                                }
                                i += 1;
                            }
                        }
                    };
                    /*  ====================================================
                     *  Private methods for creating / clearing error messages
                        ==================================================== */
                    var setErrorMessage = function(input, message) {
                        var inputField = $('input[name="' + input + '"]');
                        inputField.val(message);
                        inputField.addClass('error');
                    };
                    var clearErrorMessage = function(input) {
                        var inputField = $('input[name="' + input + '"]');
                        if (inputField.hasClass('error')) {
                            inputField.val('');
                            inputField.removeClass('error');
                        }
                    };
                    /*  ====================================================
                     *  Private method for chceking a specific field
                        ==================================================== */
                    var isValidField = function(context, input) {
                        var field = context.formObj[input],
                            validated = true,
                            message = context.emptyFieldMessage;
                        if (field.isRequired) {
                            field.value !== '' && field.value !== null ? validated = true : validated = false;
                        }
                        if (field.isEmail && validated && field.value !== null) {
                            message = context.notValidEmailMessage;
                            validated = isValidEmail(field.value);
                        }
                        if (field.isPhone && validated && field.value !== null) {
                            message = context.notValidPhoneMessage;
                            validated = isDecimal(field.value);
                        }
                        if (field.isNumber && validated && field.value !== null) {
                            message = context.nanMessage;
                            validated = isValidNumber(field.value);
                        }
                        if (!validated) {
                            var name = input;
                            setErrorMessage(name, message);
                        } else {
                            clearErrorMessage(name);
                        }
                        return validated;
                    };
                    /*  ====================================================
                     *  Method for validating the whole form
                        ==================================================== */
                    var validateForm = function(context) {
                        var appContext = context,
                            formObj = appContext.formObj,
                            isValid = true;
                        for (var key in formObj) {
                            if (formObj.hasOwnProperty(key)) {
                                var obj = formObj[key];
                                for (var prop in obj) {
                                    if (obj.hasOwnProperty(prop)) {
                                        isValidField(appContext, key) ? '' : isValid = false;
                                    }
                                }
                            }
                        }
                        return isValid;
                    };
                    /*  ====================================================
                     *  Initialisation method
                        ==================================================== */
                    this.init = function() {
                        createFormObj(context);
                        context.parent.submit(function() {
                            var appContext = context;
                            /*  Check if the form is valid and execute a callback if specified, 
                                if not specified but valid then submit the form.
                                If not valid prevent the form submission and show the validation messages
                            */
                            if (validateForm(appContext)) {
                                if (typeof(o.callback) === 'function') {
                                    o.callback();
                                    return false;
                                } else {
                                    return true;
                                }
                            } else {
                                return false;
                            };
                        });
                        $(context.formElements).on('change', function() {
                            var that = context,
                                input = $(this);
                            that.formObj[input.attr('name')].value = input.val();
                            isValidField(that, input.attr('name'));
                        }).on('focus', function() {
                            var input = $(this).attr('name');
                            clearErrorMessage(input);

                        });
                    };
                };
            /*  ========================================================
                         plugin initialisation
                         ======================================================== */
            return this.each(function() {
                var validation = new Validation($(this));
                validation.init();
            });
        }
    });
}(jQuery));