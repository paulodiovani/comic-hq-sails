expect = require('chai').expect

describe 'Stupid test', ->
  it 'pass', ->
    expect(true).to.be.true

describe 'NODE_ENV', ->
  it 'is set to test', ->
    expect(process.env.NODE_ENV).to.be.eql 'test'
