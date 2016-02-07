/* global exports */
"use strict";

// module DOM.HTML.HTMLDataElement

exports.value = function (data) {
  return function () {
    return data.value;
  };
};

exports.setValue = function (value) {
  return function (data) {
    return function () {
      data.value = value;
    };
  };
};
