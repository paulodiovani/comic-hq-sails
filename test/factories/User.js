// Generated by CoffeeScript 1.9.3
module.exports = function(factory) {
  factory.define("user")
    .attr("username", "user-", { auto_increment: true })
    .attr("email", "user@example.com", { auto_increment: true })
  ;
};