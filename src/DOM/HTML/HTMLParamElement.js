"use strict";

exports.name = function (param) {
  return function () {
    return param.name;
  };
};

exports.setName = function (name) {
  return function (param) {
    return function () {
      param.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (param) {
  return function () {
    return param.value;
  };
};

exports.setValue = function (value) {
  return function (param) {
    return function () {
      param.value = value;
    };
  };
};
