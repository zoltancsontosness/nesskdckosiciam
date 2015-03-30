function Field(parentElement, options) {
	this.parent = parentElement;
	this.value = "";

	this.createElement(options);

	$(this.element).on('input', function (event) {
		this.value = event.target.value;
	}.bind(this));
}

Field.prototype.createElement = function (options) {
	if(!options) {
		options = {
			placeholder: '',
			type: 'text'
		};
	}

	if(!options.class) {
		options.class = "";
	}

	var tmpl = '<input type="' + options.type + '" placeholder="' + options.placeholder + '" class="form-control input-lg input-dynamic field ' + options.class + '" />';
	$(this.parent).append(tmpl);

	var fields = $(this.parent).find(".field");
	this.element = fields[fields.length - 1];
}

Field.prototype.getValue = function () {
	return this.value;
}

Field.prototype.toJSON = function () {
	var clone = this;
	delete clone.parent;
	delete clone.element;

	return clone;
}


/*Field.prototype.setValidators = function (validators) {
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
};*/