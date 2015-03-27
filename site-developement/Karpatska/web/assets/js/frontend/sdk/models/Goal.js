function Goal (element) {
	this.activities = [];
	this.parentElement = element;

	this.createElement();
}

Goal.prototype.createElement = function () {
	var tmpl = '<div class="goal"></div>';

	this.parentElement.append(tmpl);
	var goals = this.parentElement.find(".goal");

	this.element = goals[goals.length - 1];
};

Goal.prototype.createInput = function (options) {
	if(!options) {
		options = {
			placeholder: 'Cieľ projektu',
			type: 'text'
		};
	}
	var tmpl = '<input type="' + options.type + '" placeholder="' + options.placeholder + '" class="form-control input-lg input-dynamic" />';
	this.element.innerHTML = this.element.innerHTML + tmpl;
};

Goal.prototype.createActivity = function () {
	var activity = new Activity(this);
	this.activities.push(activity);
	activity.createFieldElements();
}