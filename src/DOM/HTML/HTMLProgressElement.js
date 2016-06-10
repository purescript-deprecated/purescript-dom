"use strict";

exports.value = function (progress) {
  return function () {
    return progress.value;
  };
};

exports.setValue = function (value) {
  return function (progress) {
    return function () {
      progress.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.max = function (progress) {
  return function () {
    return progress.max;
  };
};

exports.setMax = function (max) {
  return function (progress) {
    return function () {
      progress.max = max;
    };
  };
};

// ----------------------------------------------------------------------------

exports.position = function (progress) {
  return function () {
    return progress.position;
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (progress) {
  return function () {
    return progress.labels;
  };
};
