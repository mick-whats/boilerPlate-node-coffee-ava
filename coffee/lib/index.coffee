_ = require 'lodash'

class SampleClass

  constructor: (@arg) ->

  @test: ->
    return {
      a: 2
      b: 'sample text'
    }

module.exports = SampleClass
