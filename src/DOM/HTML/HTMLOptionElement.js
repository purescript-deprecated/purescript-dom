"use strict";

exports.disabled = function (option) {
  return function () {
    return option.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (option) {
    return function () {
      option.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (option) {
  return function () {
    return option.form;
  };
};

// ----------------------------------------------------------------------------

exports.label = function (option) {
  return function () {
    return option.label;
  };
};

exports.setLabel = function (label) {
  return function (option) {
    return function () {
      option.label = label;
    };
  };
};

// ----------------------------------------------------------------------------

exports.defaultSelected = function (option) {
  return function () {
    return option.defaultSelected;
  };
};

exports.setDefaultSelected = function (defaultSelected) {
  return function (option) {
    return function () {
      option.defaultSelected = defaultSelected;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selected = function (option) {
  return function () {
    return option.selected;
  };
};

exports.setSelected = function (selected) {
  return function (option) {
    return function () {
      option.selected = selected;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (option) {
  return function () {
    return option.value;
  };
};

exports.setValue = function (value) {
  return function (option) {
    return function () {
      option.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.text = function (option) {
  return function () {
    return option.text;
  };
};

exports.setText = function (text) {
  return function (option) {
    return function () {
      option.text = text;
    };
  };
};

// ----------------------------------------------------------------------------

exports.index = function (option) {
  return function () {
    return option.index;
  };
};
