/* global exports */
"use strict";

// module DOM.HTML.HTMLQuoteElement

exports.cite = function (quote) {
  return function () {
    return quote.cite;
  };
};

exports.setCite = function (cite) {
  return function (quote) {
    return function () {
      quote.cite = cite;
    };
  };
};
