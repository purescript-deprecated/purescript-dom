/* global exports */
"use strict";

// module DOM.HTML.HTMLTimeElement

exports.dateTime = function (time) {
  return function () {
    return time.dateTime;
  };
};

exports.setDateTime = function (dateTime) {
  return function (time) {
    return function () {
      time.dateTime = dateTime;
    };
  };
};
