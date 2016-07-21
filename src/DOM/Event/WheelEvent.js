/* global WheelEvent */
"use strict";

exports._eventToWheelEvent = function (just) {
  return function (nothing) {
    return function (e) {
      return e instanceof WheelEvent ? just(e) : nothing;
    };
  };
};

exports.deltaX = function (e) {
  return e.deltaX;
};

exports.deltaY = function (e) {
  return e.deltaY;
};

exports.deltaZ = function (e) {
  return e.deltaZ;
};

exports.deltaModeIndex = function (e) {
  return e.deltaModeIndex;
};
