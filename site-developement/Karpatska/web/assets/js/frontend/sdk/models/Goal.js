function Goal (element) {
	this.activities = [];
	this.parentElement = element;

	this.createElement();
}

Goal.prototype.createElement = function () {
	var tmpl = '<div class="goal" id="1"></div>';

	this.parentElement.innerHTML = this.parentElement.innerHTML + tmpl;
	var goals = this.parentElement.getElementsByClassName("goal");

	this.element = goals[goals.length - 1];
};

Goal.prototype.createInput = function (options) {
	if(!options) {
		options = {
			placeholder: 'Cieľ projektu',
			type: 'text'
		};
	}
	var tmpl = '<input type="' + options.type + '" placeholder="' + options.placeholder + '">';
	this.element.innerHTML = this.element.innerHTML + tmpl;
};