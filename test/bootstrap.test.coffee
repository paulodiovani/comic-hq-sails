require('dotenv').load
  path: './.env.test'

Sails = require('sails')
sails = null

before (done) ->
  Sails.lift {
    # configuration for testing purposes
  }, (err, server) ->
    sails = server
    return done(err) if err
    # here you can load fixtures, etc.
    done err, sails

after (done) ->
  # here you can clear fixtures, etc.
  sails.lower done
