const goalService = require('../services/goalService');

exports.getAllGoals = async (req, res) => {
    try {
        const goals = await goalService.getAllGoals();
        res.json(goals);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};

exports.createGoal = async (req, res) => {
    try {
        const user = await goalService.createGoal(req.body);
        res.status(201).json(goal);
    } catch (err) {
        res.status(400).json({ error: err.message });
    }
};

