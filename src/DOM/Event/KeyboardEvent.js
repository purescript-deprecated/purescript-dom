"use strict";

exports.key = function (e) {
  return e.key;
};

exports.code = function (e) {
  return e.code;
};

exports.locationIndex = function (e) {
  return e.location;
};

exports.ctrlKey = function (e) {
  return e.ctrlKey;
};

exports.shiftKey = function (e) {
  return e.shiftKey;
};

exports.altKey = function (e) {
  return e.altKey;
};

exports.metaKey = function (e) {
  return e.metaKey;
};

exports.repeat = function (e) {
  return e.repeat;
};

exports.isComposing = function (e) {
  return e.isComposing;
};

exports.getModifierState = function (s) {
  return function (e) {
    return function () {
      return e.getModifierState(s);
    };
  };
};
