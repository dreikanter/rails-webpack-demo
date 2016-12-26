"use strict";

const webpack = require("webpack");
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const CleanWebpackPlugin = require('clean-webpack-plugin');

module.exports = {
  context: __dirname + "/app/assets",
  entry: {
    application: [
      "./javascripts/application.js",
      "./stylesheets/application.scss"
    ],
    admin: [
      "./stylesheets/admin.scss"
    ]
  },
  output: {
    path: __dirname + "/public/webpack",
    filename: "javascripts/[name].js",
  },
  devtool: "source-map",
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel",
        query: {
          presets: ["es2015"]
        }
      },
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract("style", "css")
      },
      {
        test: /\.scss$/,
        loader: ExtractTextPlugin.extract("style", "css?sourceMap!sass")
      },
      {
        test: /\.(png|woff|woff2|eot|ttf|svg)$/,
        loader: "url?limit=100000"
      },
      {
        test: /\.(jpg|png|svg)$/,
        loader: "file?name=images/[name].[ext]"
      }
    ]
  },
  plugins: [
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery"
    }),
    new ExtractTextPlugin("stylesheets/[name].css"),
    new CleanWebpackPlugin(["public/webpack"], {
      verbose: true,
      dry: true
    })
  ]
}
