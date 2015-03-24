function NotBlank(message) {
	this.message = message || "Toto pole nemôže byť prázdne.";
}

NotBlank.prototype.validate = function (field) {
	var valid = (field.length > 0) ? true : false;
	return valid;
};