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
    this.createActivityButton();
	this.createInput();
};

Goal.prototype.createInput = function (options) {
	if(!options) {
		options = {
			placeholder: 'Cieľ projektu',
			type: 'text',
			class: 'pull-right'
		};
	}
	this.inputField = new Field(this.element, options);
};

Goal.prototype.createActivityButton = function () {
    var tmpl = '<button onclick="registerActivityHandler(this);" type="button" id="add_activity" class="btn btn-warning pull-right">Pridajte aktivitu</button>';
    $(this.element).append(tmpl);
};

Goal.prototype.createActivity = function () {
	var activity = new Activity(this);
	this.activities.push(activity);
	activity.createFieldElements();
};

Goal.prototype.toJSON = function () {
	var clone = this;
	var clonedActivities = [];

	for(i = 0; i<clone.activities.length; i++) {
		clonedActivities.push(clone.activities[i].toJSON());
	}

	clone.activities = clonedActivities;
	delete clone.element;
	delete clone.parentElement;
	clone.inputField = clone.inputField.toJSON();

	return clone;
};