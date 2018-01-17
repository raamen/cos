const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')
const typescript =  require('./loaders/typescript')

environment.loaders.append('vue', vue)
environment.loaders.append('typescript',  typescript)
module.exports = environment
