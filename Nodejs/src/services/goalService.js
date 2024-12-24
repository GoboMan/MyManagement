//
//  goalService.js
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/23.
//

const Goal = require('../models/goalModel');

exports.getAllGoals = async () => {
    return await Goal.find();
};

exports.createGoal = async (data) => {
    const goal = new Goal(data);
    return await goal.save();
};
