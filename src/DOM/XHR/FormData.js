/* global FormData */
"use strict";

exports.newFormData = function () {
  return new FormData();
};

exports.appendString = function (form) {
  return function (key) {
    return function (val) {
      form.append(key, val);
      return {};
    };
  };
};

exports.appendWithName = function (form) {
  return function (key) {
    return function (val) {
      return function (name) {
        form.append(key, val, name);
        return {};
      };
    };
  };
};
