"use strict";

exports.disabled = function (optgroup) {
  return function () {
    return optgroup.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (optgroup) {
    return function () {
      optgroup.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports.label = function (optgroup) {
  return function () {
    return optgroup.label;
  };
};

exports.setLabel = function (label) {
  return function (optgroup) {
    return function () {
      optgroup.label = label;
    };
  };
};
