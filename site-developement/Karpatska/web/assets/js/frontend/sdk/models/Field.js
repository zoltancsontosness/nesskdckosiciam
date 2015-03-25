function Field(element) {
	this.element = element;
}

Field.prototype.setValidators = function (validators) {
	this.validators = validators;
};

Field.prototype.validate = function () {
	var validatorService = new ValidatorService();
	validatorService.registerValidators();
	for(i = 0; i == this.validators.length; i++) {
		var validator = validatorService.getValidator(this.validators[i]);
		var valid = validator.validate(this);

		if(valid !== true) {
			this.element.appendChild(validator.message);
		}
	}
};