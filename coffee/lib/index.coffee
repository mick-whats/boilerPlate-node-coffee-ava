_ = require 'lodash'
root = require('rrq').root()
args2 = require 'args2'

class SampleClass

  constructor: (@arg) ->

  @test: ->
    return {
      a: 2
      b: 'sample text'
    }

module.exports = SampleClass
