const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jquery: 'jquery/src/jquery',
  }))

module.exports = environment                                                                                                                                                                                                                                                                                                                                                                                                      //                                                                                                    qw3sssssssssssssssssssssssssssssssssS 13SXXSS