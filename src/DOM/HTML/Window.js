/* global exports */
"use strict";

// module DOM.HTML.Window

exports.document = function (window) {
  return function () {
    return window.document;
  };
};
