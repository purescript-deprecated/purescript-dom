"use strict";

exports._form = function (output) {
  return function () {
    return output.form;
  };
};

// ----------------------------------------------------------------------------

exports.name = function (output) {
  return function () {
    return output.name;
  };
};

exports.setName = function (name) {
  return function (output) {
    return function () {
      output.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (output) {
  return function () {
    return output.type;
  };
};

// ----------------------------------------------------------------------------

exports.defaultValue = function (output) {
  return function () {
    return output.defaultValue;
  };
};

exports.setDefaultValue = function (defaultValue) {
  return function (output) {
    return function () {
      output.defaultValue = defaultValue;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (output) {
  return function () {
    return output.value;
  };
};

exports.setValue = function (value) {
  return function (output) {
    return function () {
      output.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (output) {
  return function () {
    return output.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (output) {
  return function () {
    return output.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (output) {
  return function () {
    return output.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (output) {
  return function () {
    return output.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (output) {
    return function () {
      output.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (output) {
  return function () {
    return output.labels;
  };
};
