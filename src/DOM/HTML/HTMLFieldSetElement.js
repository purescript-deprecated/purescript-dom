"use strict";

exports.disabled = function (fieldset) {
  return function () {
    return fieldset.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (fieldset) {
    return function () {
      fieldset.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (fieldset) {
  return function () {
    return fieldset.form;
  };
};

// ----------------------------------------------------------------------------

exports.name = function (fieldset) {
  return function () {
    return fieldset.name;
  };
};

exports.setName = function (name) {
  return function (fieldset) {
    return function () {
      fieldset.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (fieldset) {
  return function () {
    return fieldset.type;
  };
};

exports.setType = function (type) {
  return function (fieldset) {
    return function () {
      fieldset.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (fieldset) {
  return function () {
    return fieldset.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (fieldset) {
  return function () {
    return fieldset.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (fieldset) {
  return function () {
    return fieldset.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (fieldset) {
  return function () {
    return fieldset.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (fieldset) {
    return function () {
      fieldset.setCustomValidity(value);
    };
  };
};
