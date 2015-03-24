function ValidatorService() {
	this.validators = {};
}

ValidatorService.prototype.registerValidators = function () {
	this.validators = {
		"NotBlank": new NotBlank(),
		"MaxLength": new MaxLength(),
		"MinLength": new MinLength()
	};
};

ValidatorService.prototype.getValidators = function () {
	return this.validators;
};

ValidatorService.prototype.getValidator = function (validator) {
	var validator = (this.validators[validator]) ? this.validators[validator] : null;
	return validator;
};

