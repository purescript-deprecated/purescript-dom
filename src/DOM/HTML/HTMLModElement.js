"use strict";

exports.cite = function (mod) {
  return function () {
    return mod.cite;
  };
};

exports.setCite = function (cite) {
  return function (mod) {
    return function () {
      mod.cite = cite;
    };
  };
};

// ----------------------------------------------------------------------------

exports.dateTime = function (mod) {
  return function () {
    return mod.dateTime;
  };
};

exports.setDateTime = function (dateTime) {
  return function (mod) {
    return function () {
      mod.dateTime = dateTime;
    };
  };
};
