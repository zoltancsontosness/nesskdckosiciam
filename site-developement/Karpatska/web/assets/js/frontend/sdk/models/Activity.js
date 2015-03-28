function Activity (goal) {
	this.fields = [];
	this.goal = goal;

	this.createElement();
}

Activity.prototype.createElement = function () {
	var tmpl = '<div class="activity clearfix"></div>';

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
			{label: 'Popis aktivity', type: 'text'},
			{label: 'Zodpovedná osoba', type: 'text'},
			{label: 'Dátum realizácie', type: 'text'}
		];
	}

	for(var i = 0; i < options.length; i++) {
		tmpl += '<div class="clearfix" style="width:85%;float:right;"><label>' + options[i].label + '</label>';
		tmpl += '<input type="' + options[i].type + '" class="form-control input-lg input-dynamic pull-right"/></div>';
	}
	this.renderFields(tmpl);
};

Activity.prototype.renderFields = function (tmpl) {
	this.element.innerHTML = this.element.innerHTML + tmpl;

};