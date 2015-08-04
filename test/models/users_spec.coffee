expect = require('chai').expect

describe 'UserModel', ->

  describe '#count()', ->
    it 'is empty', (done) ->
      User.count()
        .then (found) ->
          expect(found).to.be.zero
          done()
        .catch(done)

  describe '#create', ->
    it 'add a user', (done) ->
      User.create
        username: 'Foo bar'
        email   : 'foo@example.com'
      .then (created) ->
        expect(created.username).to.be.eql 'Foo bar'
        done()
      .catch(done)

  describe '#find()', ->
    it 'find user', (done) ->
      User.find()
        .then (results) ->
          expect(results).to.have.deep.property '[0].email', 'foo@example.com'
          done()
        .catch(done)
