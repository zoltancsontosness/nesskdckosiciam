function Field(element) {
	this.element = element;
	this.value = element.value;
}

function FormModel(form) {
	this.formName = form;
}

FormModel.prototype.getListOfInputs = function () {
	return document.forms[this.formName].getElementsByTagName("input");
};