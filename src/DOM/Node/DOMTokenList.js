"use strict";

exports.add = function(list) {
  return function(token) {
    return function() {
      return list.add(token);
    };
  };
};

exports.remove = function(list) {
  return function(token) {
    return function() {
      return list.remove(token);
    };
  };
};

exports.contains = function(list) {
  return function(token) {
    return function() {
      return list.contains(token);
    };
  };
};

exports.toggle = function(list) {
  return function(token) {
    return function() {
      return list.toggle(token);
    };
  };
};

exports.toggleForce = function(list) {
  return function(token) {
    return function(force) {
      return function() {
        return list.toggle(token, force);
      };
    };
  };
};

exports._item = function(list) {
  return function(index) {
    return function() {
      return list.item(index);
    };
  };
};
