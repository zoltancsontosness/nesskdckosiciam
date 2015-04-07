function Activity (goal) {
	this.fields = [];
	this.goal = goal;

	this.createElement();
    this.createRemoveButton();
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

		//$(this.element).append(tmpl);
        var button = $(this.element).find('button');
        $(tmpl).insertBefore(button);
		var elements = $(this.element).find('.activity-item');
		var field = new Field(elements[elements.length - 1], options[i]);
		this.fields.push(field);
	}
};

Activity.prototype.createRemoveButton = function () {
    var tmpl = '<button onclick="registerRemoveActivityHandler(this);" type="button" id="remove_activity" class="btn btn-error pull-right">Odoberte aktivitu</button>';
    $(this.element).append(tmpl);
};

Activity.prototype.removeActivity = function () {
    var cloneActivities = this.goal.activities;
    for(i=0; this.goal.activities.length; i++) {
        if(this.goal.activities[i] === this) {
            var index = this.goal.activities.indexOf(this.goal.activities[i]);
            this.element.remove();
            this.goal.activities.splice(index, 1);
            return ;
        }
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