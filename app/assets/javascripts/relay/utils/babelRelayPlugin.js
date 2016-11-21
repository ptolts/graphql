// app/assets/javascripts/relay/utils/babelRelayPlugin.js
var getBabelRelayPlugin = require('babel-relay-plugin');
// load previously saved schema data
var schemaData = require('../data/schema.json');
// create a plugin instance
var plugin = getBabelRelayPlugin(schemaData.data);
module.exports = plugin;
