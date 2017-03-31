'use strict';

const webpack = require('webpack');
const path = require('path');

const production = process.env.TARGET === 'production';
const bundleNameFormat = production ? '[name]-[chunkhash].js' : '[name].js';
const devServerPort = 3808;
const publicPath = production ? '/dist/' : '//localhost:' + devServerPort + '/dist/'


module.exports = {
  // Base path for all other paths in configuration
  context: __dirname,

  entry: {
    application: [
      path.join(__dirname, 'client', 'application.js')
    ]
  },

  output: {
    path: path.join(__dirname, 'public', 'dist'),
    publicPath: '/dist/',
    filename: bundleNameFormat
  },

  // Relevant for TARGET=development only
  devServer: {
    port: devServerPort,
    headers: { 'Access-Control-Allow-Origin': '*' }
  },

  // https://webpack.js.org/configuration/devtool/#components/sidebar/sidebar.jsx
  devtool: 'cheap-module-eval-source-map'
}
