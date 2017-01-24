"use strict";

exports.back = function(history) {
  return function() {
    return history.back();
  };
};
exports.forward = function(history) {
  return function() {
    return history.forward();
  };
};
exports.go = function(history) {
  return function(delta) {
    return function() {
      return history.go(delta);
    };
  };
};
exports.pushState = function(history) {
  return function(a) {
    return function(docTitle) {
      return function(url) {
        return function() {
          return history.pushState(a, docTitle, url);
        };
      };
    };
  };
};
exports.replaceState = function(history) {
  return function(a) {
    return function(docTitle) {
      return function(url) {
        return function() {
          return history.replaceState(a, docTitle, url);
        };
      };
    };
  };
};
exports.state = function(history) {
  return function() {
    return history.state;
  };
};
