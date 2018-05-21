assert = require 'assert'
_ = require 'lodash'
{test} = require 'ava'
path = require 'path'
root = require('rrq').root()
SampleClass = require root

test 'SampleClass.test()', (t) =>
  sample = SampleClass.test()
  t.deepEqual sample, {a: 2,b: 'sample text'}
  # t.true sample is {a: 2,b: 'sample text'}

test 'package.json', (t) =>
  pj = require(path.join root,'package.json')
  t.is pj.devDependencies.coffeescript, '^2.2.3'
