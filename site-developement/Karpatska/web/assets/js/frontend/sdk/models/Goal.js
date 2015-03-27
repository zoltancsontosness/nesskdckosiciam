function Goal(){

}

Goal.prototype.createFieldElements = function (options, targetElement) {
    var options = options;
    var tmpl = "";
    if(!options) {
        options = [
            {label: 'Cieľ', type: 'text'}
        ];
    }

    for(var i = 0; i == options.length; i++) {
        tmpl += "<label>" + options[i].label + "</label>";
        tmpl += '<input type="' + options[i].type + ' class="form-control input-lg input-dynamic">';
    }

    targetElement.innerHTML = targetElement.innerHTML + tmpl;
};