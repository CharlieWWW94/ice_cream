const path = require('path');

module.exports = {
  entry: './public/src/application.js',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'public/dist')
  },
};