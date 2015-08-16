
Sails = require('sails')
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
    done()

after (done) ->
  # here you can clear fixtures, etc.
  sails.lower done
