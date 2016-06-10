"use strict";

exports.bubbles = function (e) {
  return e.bubbles;
};

exports.cancelable = function (e) {
  return e.cancelable;
};

exports.currentTarget = function (e) {
  return e.currentTarget;
};

exports.defaultPrevented = function (e) {
  return e.defaultPrevented;
};

exports.eventPhaseIndex = function (e) {
  return e.eventPhase;
};

exports.target = function (e) {
  return e.target;
};

exports.timeStamp = function (e) {
  return e.timeStamp;
};

exports.type_ = function (e) {
  return e.type;
};

exports.preventDefault = function (e) {
  return function () {
    return e.preventDefault();
  };
};

exports.stopImmediatePropagation = function (e) {
  return function () {
    return e.stopImmediatePropagation();
  };
};

exports.stopPropagation = function (e) {
  return function () {
    return e.stopPropagation();
  };
};
