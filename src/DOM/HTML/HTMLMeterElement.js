"use strict";

exports.value = function (meter) {
  return function () {
    return meter.value;
  };
};

exports.setValue = function (value) {
  return function (meter) {
    return function () {
      meter.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.min = function (meter) {
  return function () {
    return meter.min;
  };
};

exports.setMin = function (min) {
  return function (meter) {
    return function () {
      meter.min = min;
    };
  };
};

// ----------------------------------------------------------------------------

exports.max = function (meter) {
  return function () {
    return meter.max;
  };
};

exports.setMax = function (max) {
  return function (meter) {
    return function () {
      meter.max = max;
    };
  };
};

// ----------------------------------------------------------------------------

exports.low = function (meter) {
  return function () {
    return meter.low;
  };
};

exports.setLow = function (low) {
  return function (meter) {
    return function () {
      meter.low = low;
    };
  };
};

// ----------------------------------------------------------------------------

exports.high = function (meter) {
  return function () {
    return meter.high;
  };
};

exports.setHigh = function (high) {
  return function (meter) {
    return function () {
      meter.high = high;
    };
  };
};

// ----------------------------------------------------------------------------

exports.optimum = function (meter) {
  return function () {
    return meter.optimum;
  };
};

exports.setOptimum = function (optimum) {
  return function (meter) {
    return function () {
      meter.optimum = optimum;
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (meter) {
  return function () {
    return meter.labels;
  };
};
