/* global exports */
"use strict";

// module DOM.HTML.HTMLTitleElement

exports.text = function (title) {
  return function () {
    return title.text;
  };
};

exports.setText = function (text) {
  return function (title) {
    return function () {
      title.text = text;
    };
  };
};
