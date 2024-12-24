//
//  index.js
//  MyManagement
//
//  Created by Taisei Abe on 2024/12/17.
//

const app = require('./src/app');
const dotenv = require('dotenv');
dotenv.config();

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
