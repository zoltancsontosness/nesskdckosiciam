function Activity (goal) {
	this.fields = [];
	this.goal = goal;

	this.createElement();
}

Activity.prototype.createElement = function () {
	var tmpl = '<div class="activity"></div>';

	this.goal.element.innerHTML = this.goal.element.innerHTML + tmpl;
	var activities = this.goal.element.getElementsByClassName("activity");

	this.element = activities[activities.length - 1];
};

Activity.prototype.createFieldElements = function (options) {
	var options = options;
	var tmpl = "";
	if(!options) {
		options = [
			{label: 'Názov aktivity', type: 'text'},
			{label: 'Popis aktivity', type: 'textarea'},
			{label: 'Zodpovedná osoba', type: 'text'},
			{label: 'Dátum', type: 'text'}
		];
	}

	for(var i = 0; i == options.length; i++) {
		tmpl += "<label>" + options[i].label + "</label>";
		tmpl += '<input type="' + options[i].type + '">';
	}
	this.renderFields(tmpl);
};

Activity.prototype.renderFields = function (tmpl) {
	this.element.innerHTML = this.element.innerHTML + tmpl;
};