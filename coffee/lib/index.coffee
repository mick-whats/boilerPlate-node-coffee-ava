_ = require 'lodash'
root = require('rrq').root()

class SampleClass

  constructor: (@arg) ->

  @test: ->
    return {
      a: 2
      b: 'sample text'
    }

module.exports = SampleClass
