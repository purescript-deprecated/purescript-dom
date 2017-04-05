"use strict";

exports.data_ = function (object) {
  return function () {
    return object.data;
  };
};

exports.setData = function (data) {
  return function (object) {
    return function () {
      object.data = data;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (object) {
  return function () {
    return object.type;
  };
};

exports.setType = function (type) {
  return function (object) {
    return function () {
      object.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.typeMustMatch = function (object) {
  return function () {
    return object.typeMustMatch;
  };
};

// ----------------------------------------------------------------------------

exports.name = function (object) {
  return function () {
    return object.name;
  };
};

exports.setName = function (name) {
  return function (object) {
    return function () {
      object.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.useMap = function (object) {
  return function () {
    return object.useMap;
  };
};

exports.setUseMap = function (useMap) {
  return function (object) {
    return function () {
      object.useMap = useMap;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (object) {
  return function () {
    return object.form;
  };
};

// ----------------------------------------------------------------------------

exports.width = function (object) {
  return function () {
    return object.width;
  };
};

exports.setWidth = function (width) {
  return function (object) {
    return function () {
      object.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (object) {
  return function () {
    return object.height;
  };
};

exports.setHeight = function (height) {
  return function (object) {
    return function () {
      object.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports._contentDocument = function (object) {
  return function () {
    return object.contentDocument;
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (object) {
  return function () {
    return object.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (object) {
  return function () {
    return object.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (object) {
  return function () {
    return object.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (object) {
  return function () {
    return object.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (object) {
    return function () {
      object.setCustomValidity(value);
    };
  };
};
