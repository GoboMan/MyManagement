//
//  index.js
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/23.
//
const express = require('express');
const userRoutes = require('./userRoutes');
const router = express.Router();

router.use('/users', userRoutes);

module.exports = router;

