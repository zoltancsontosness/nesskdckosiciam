function MaxLength(message, constraint) {
	this.constraint = constraint;
	this.message = message || "Toto pole musí mať maximálne " + constraint + " znakov";
}

MaxLength.prototype.validate = function (field) {
	var valid = (field.length < this.constraint) ? true : false;
	return valid;
};