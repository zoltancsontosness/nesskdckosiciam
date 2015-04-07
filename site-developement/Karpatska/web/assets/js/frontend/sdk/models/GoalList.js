function GoalList () {
	this.goals = [];
}

GoalList.prototype.addGoal = function (goal) {
	this.goals.push(goal);
};

GoalList.prototype.removeGoal = function (goal) {
	for( var i=0;i<this.goals.length; i++) {
		if(this.goals[i] === goal) {
			this.goals.splice(i, 1);
		}
	}
};

GoalList.prototype.toJSON = function () {
	var goals = [];
	for(var i=0;i<this.goals.length; i++) {
		goals.push(this.goals[i].toJSON());
	}

	return JSON.stringify(this.goals);
}