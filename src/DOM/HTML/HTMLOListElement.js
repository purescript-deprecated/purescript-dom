"use strict";

exports.reversed = function (ol) {
  return function () {
    return ol.reversed;
  };
};

exports.setReversed = function (reversed) {
  return function (ol) {
    return function () {
      ol.reversed = reversed;
    };
  };
};

// ----------------------------------------------------------------------------

exports.start = function (ol) {
  return function () {
    return ol.start;
  };
};

exports.setStart = function (start) {
  return function (ol) {
    return function () {
      ol.start = start;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (ol) {
  return function () {
    return ol.type;
  };
};

exports.setType = function (type) {
  return function (ol) {
    return function () {
      ol.type = type;
    };
  };
};
