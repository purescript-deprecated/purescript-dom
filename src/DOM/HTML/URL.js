"use strict";

exports.createObjectURL = function (fileOrBlob) {
  return function (URL) {
    return function () {
      return URL.createObjectURL(fileOrBlob);
    };
  };
};

exports.revokeObjectURL = function (objectURL) {
  return function (URL) {
    return function () {
      return URL.revokeObjectURL(objectURL);
    };
  };
};