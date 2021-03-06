// Local configuration
//
// Included in the .gitignore by default,
// this is where you include configuration overrides for your local system
// or for a production deployment.


// For example, to use port 80 on the local machine, override the `port` config
// module.exports.port = 80;

// or to keep your db credentials out of the repo, but to use them on the local machine
// override the `modelDefaults` config
// module.exports.modelDefaults = { database: 'foo', user: 'bar', password: 'baZ'}

exports.port = 3000;

exports.log = {
  level: 'verbose'
};

exports.connections = {
  mongodb: {
    host: 'localhost',
    port: 27017,
    user: '',
    password: '',
    database: 'comichq-dev'
  }
};

exports.models = {
  migrate: 'alter'
};

exports.session = {
  host: 'localhost',
  port: 6379,
  db: 'comichq-dev',
  pass: ''
};
