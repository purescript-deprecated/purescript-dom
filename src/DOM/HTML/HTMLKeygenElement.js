"use strict";

exports.autofocus = function (keygen) {
  return function () {
    return keygen.autofocus;
  };
};

exports.setAutofocus = function (autofocus) {
  return function (keygen) {
    return function () {
      keygen.autofocus = autofocus;
    };
  };
};

// ----------------------------------------------------------------------------

exports.challenge = function (keygen) {
  return function () {
    return keygen.challenge;
  };
};

exports.setChallenge = function (challenge) {
  return function (keygen) {
    return function () {
      keygen.challenge = challenge;
    };
  };
};

// ----------------------------------------------------------------------------

exports.disabled = function (keygen) {
  return function () {
    return keygen.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (keygen) {
    return function () {
      keygen.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (keygen) {
  return function () {
    return keygen.form;
  };
};

// ----------------------------------------------------------------------------

exports.keytype = function (keygen) {
  return function () {
    return keygen.keytype;
  };
};

exports.setKeytype = function (keytype) {
  return function (keygen) {
    return function () {
      keygen.keytype = keytype;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (keygen) {
  return function () {
    return keygen.name;
  };
};

exports.setName = function (name) {
  return function (keygen) {
    return function () {
      keygen.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (keygen) {
  return function () {
    return keygen.type;
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (keygen) {
  return function () {
    return keygen.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (keygen) {
  return function () {
    return keygen.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (keygen) {
  return function () {
    return keygen.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (keygen) {
  return function () {
    return keygen.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (keygen) {
    return function () {
      keygen.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (keygen) {
  return function () {
    return keygen.labels;
  };
};
