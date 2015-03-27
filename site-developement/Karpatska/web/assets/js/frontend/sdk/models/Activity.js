function Activity (goal) {
	this.fields = [];
	this.goal = goal;
}

Activity.prototype.createFieldElements = function (options, targetElement) {
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

	targetElement.innerHTML = targetElement.innerHTML + tmpl;
};