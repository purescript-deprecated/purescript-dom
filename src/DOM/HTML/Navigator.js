"use strict";

exports.platform = function (navigator) {
  return function () {
    return navigator.platform;
  };
};
