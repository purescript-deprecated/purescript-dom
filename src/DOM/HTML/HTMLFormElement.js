"use strict";

exports.acceptCharset = function (form) {
  return function () {
    return form.acceptCharset;
  };
};

exports.setAcceptCharset = function (acceptCharset) {
  return function (form) {
    return function () {
      form.acceptCharset = acceptCharset;
    };
  };
};

// ----------------------------------------------------------------------------

exports.action = function (form) {
  return function () {
    return form.action;
  };
};

exports.setAction = function (action) {
  return function (form) {
    return function () {
      form.action = action;
    };
  };
};

// ----------------------------------------------------------------------------

exports.autocomplete = function (form) {
  return function () {
    return form.autocomplete;
  };
};

exports.setAutocomplete = function (autocomplete) {
  return function (form) {
    return function () {
      form.autocomplete = autocomplete;
    };
  };
};

// ----------------------------------------------------------------------------

exports.enctype = function (form) {
  return function () {
    return form.enctype;
  };
};

exports.setEnctype = function (enctype) {
  return function (form) {
    return function () {
      form.enctype = enctype;
    };
  };
};

// ----------------------------------------------------------------------------

exports.encoding = function (form) {
  return function () {
    return form.encoding;
  };
};

exports.setEncoding = function (encoding) {
  return function (form) {
    return function () {
      form.encoding = encoding;
    };
  };
};

// ----------------------------------------------------------------------------

exports.method = function (form) {
  return function () {
    return form.method;
  };
};

exports.setMethod = function (method) {
  return function (form) {
    return function () {
      form.method = method;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (form) {
  return function () {
    return form.name;
  };
};

exports.setName = function (name) {
  return function (form) {
    return function () {
      form.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.noValidate = function (form) {
  return function () {
    return form.noValidate;
  };
};

exports.setNoValidate = function (noValidate) {
  return function (form) {
    return function () {
      form.noValidate = noValidate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.target = function (form) {
  return function () {
    return form.target;
  };
};

exports.setTarget = function (target) {
  return function (form) {
    return function () {
      form.target = target;
    };
  };
};

// ----------------------------------------------------------------------------

exports.length = function (form) {
  return function () {
    return form.length;
  };
};

// ----------------------------------------------------------------------------

exports.submit = function (form) {
  return function () {
    form.submit();
  };
};

// ----------------------------------------------------------------------------

exports.reset = function (form) {
  return function () {
    form.reset();
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (form) {
  return function () {
    return form.checkValidity();
  };
};
