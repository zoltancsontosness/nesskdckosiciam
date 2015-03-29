function GoalList () {
	this.goals = [];
}

GoalList.prototype.addGoal = function (goal) {
	this.goals.push(goal);
};

GoalList.prototype.removeGoal = function (goal) {
	for(i=0;i<this.goals.length; i++) {
		if(this.goals[i] === goal) {
			this.goals.splice(i, 1);
		}
	}
};

GoalList.prototype.toJSON = function () {
	var clone = this;
	var clonedGoals = [];
	for(i=0; i<this.goals.length; i++) {
		clonedGoals.push(this.goals[i].toJSON());
	}

	clone.goals = clonedGoals;

	return JSON.stringify(clone);
}