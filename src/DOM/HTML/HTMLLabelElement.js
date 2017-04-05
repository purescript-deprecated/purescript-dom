"use strict";

exports._form = function (label) {
  return function () {
    return label.form;
  };
};

// ----------------------------------------------------------------------------

exports.htmlFor = function (label) {
  return function () {
    return label.htmlFor;
  };
};

exports.setHtmlFor = function (htmlFor) {
  return function (label) {
    return function () {
      label.htmlFor = htmlFor;
    };
  };
};

// ----------------------------------------------------------------------------

exports._control = function (label) {
  return function () {
    return label.control;
  };
};
