var path = require("path")
var webpack = require("webpack")

module.exports = {
    mode: 'development',
    entry: "./frontend/main.js",
    output: {
        path: path.join(__dirname, "/app/assets/javascripts"),
        filename: "bundle.js"
    },
    module: {
      rules: [{
        test: /\.jsx?$/,
        exclude: /node_modules/,
        use: [{
          loader: 'babel-loader',
          options: {
            presets: ['react','env']
          }
        }]
      }]
    }
}
