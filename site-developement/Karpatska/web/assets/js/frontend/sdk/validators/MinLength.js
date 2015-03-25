function MinLength(message, constraint) {
	this.constraint = constraint;
	this.message = message || "Toto pole musí mať minimálne " + constraint + " znakov";
}

MinLength.prototype.validate = function (field) {
	var valid = (field.length > this.constraint) ? true : false;
	return valid;
};