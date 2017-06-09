"use strict";

exports.add = function(token) {
  return function(list) {
    return function() {
      return list.add(token);
    };
  };
};

exports.remove = function(token) {
  return function(list) {
    return function() {
      return list.remove(token);
    };
  };
};

exports.contains = function(token) {
  return function(list) {
    return function() {
      return list.contains(token);
    };
  };
};

exports.toggle = function(token) {
  return function(list) {
    return function() {
      return list.toggle(token);
    };
  };
};

exports.toggleForce = function(token) {
  return function(force) {
    return function(list) {
      return function() {
        return list.toggle(token, force);
      };
    };
  };
};

exports._item = function(index) {
  return function(list) {
    return function() {
      return list.item(index);
    };
  };
};
