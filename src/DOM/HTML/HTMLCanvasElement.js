"use strict";

exports.width = function (canvas) {
  return function () {
    return canvas.width;
  };
};

exports.setWidth = function (width) {
  return function (canvas) {
    return function () {
      canvas.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (canvas) {
  return function () {
    return canvas.height;
  };
};

exports.setHeight = function (height) {
  return function (canvas) {
    return function () {
      canvas.height = height;
    };
  };
};
