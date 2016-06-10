"use strict";

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
