Sails = require('sails')
async = require('async')

global.expect  = require('chai').expect
global.factory = require('sails-factory')

sails = null

testConfig =
  environment: 'test'
  port: 3012
  log:
    level: 'warn'
  connections:
    mongodb:
      database: 'comichq-test'
  models:
    migrate: 'drop'
  session:
    db: 'comichq-test'

before (done) ->
  Sails.lift testConfig, (err, server) ->
    sails = server
    return done(err) if err
    # here you can load fixtures, etc.
    factory.load()
    done()

after (done) ->
  # here you can clear fixtures, etc.
  sails.lower done

beforeEach (done) ->
  # Force run auto migration (drop) before each test
  sails.once 'hook:orm:reloaded', done
  sails.emit 'hook:orm:reload'
