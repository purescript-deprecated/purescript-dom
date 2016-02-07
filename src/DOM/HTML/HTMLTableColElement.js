/* global exports */
"use strict";

// module DOM.HTML.HTMLTableColElement

exports.span = function (col) {
  return function () {
    return col.span;
  };
};

exports.setSpan = function (span) {
  return function (col) {
    return function () {
      col.span = span;
    };
  };
};
