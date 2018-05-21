assert = require 'assert'
_ = require('xza').lodash
{test} = require 'ava'

sleep = (date,ms = 100) ->
  new Promise (resolve, reject)->
    setTimeout ->
      resolve new Date() - date
    ,ms

start = null
test.serial.before (t)->
  start = new Date()
test 'lodash',(t)->
  t.is _.sizeof({a: 1}), '10 B'

test 'test_1',(t)->
  now = await sleep(start)
  t.log(now)
  t.pass()
test 'test_2',(t)->
  now = await sleep(start)
  t.log(now)
  t.pass()
test 'test_3',(t)->
  now = await sleep(start)
  t.log(now)
  t.pass()
test.serial 'test_4',(t)->
  now = await sleep(start)
  t.log(now)
  t.pass()
test.serial 'test_5',(t)->
  now = await sleep(start, 500)
  t.log(now)
  t.pass()
test.serial 'test_6',(t)->
  now = await sleep(start, 1000)
  t.log(now)
  t.pass()
