"use strict";

exports.filesNullable = function (dataTransfer) {
  return dataTransfer.files;
};

exports.types = function (dataTransfer) {
  return dataTransfer.types;
};

exports.getData = function (format) {
  return function (dataTransfer) {
    return function () {
      return dataTransfer.getData(format);
    };
  };
};

exports.setData = function (format) {
  return function (data) {
    return function (dataTransfer) {
      return function () {
        return dataTransfer.setData(format, data);
      };
    };
  };
};
