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
	if(!options) {
		options = [
			{placeholder: 'Názov aktivity', type: 'text', class: 'pull-right'},
			{placeholder: 'Popis aktivity', type: 'text', class: 'pull-right'},
			{placeholder: 'Zodpovedná osoba', type: 'text', class: 'pull-right'},
			{placeholder: 'Dátum realizácie', type: 'text', class: 'pull-right'}
		];
	}

	for(var i = 0; i < options.length; i++) {
		var tmpl = '<div class="clearfix activity-item" style="width:85%;float:right;"><label>' + options[i].placeholder + '</label></div>';

		$(this.element).append(tmpl);
		var elements = $(this.element).find('.activity-item');
		var field = new Field(elements[elements.length - 1], options[i]);
		this.fields.push(field);
	}
};

Activity.prototype.toJSON = function () {
	var clone = this;
	var clonedFields = [];

	for(i = 0; i<clone.fields.length; i++) {
		clonedFields.push(clone.fields[i].toJSON());
	}

	clone.fields = clonedFields;
	delete clone.element;
	delete clone.goal;

	return clone;
}