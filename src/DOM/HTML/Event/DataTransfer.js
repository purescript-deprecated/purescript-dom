"use strict";

exports._files = function (dataTransfer) {
  return dataTransfer.files;
};

exports.types = function (dataTransfer) {
  return dataTransfer.types;
};

exports.getDataImpl = function (format) {
  return function (dataTransfer) {
    return function () {
      return dataTransfer.getData(format);
    };
  };
};

exports.setDataImpl = function (format) {
  return function (data) {
    return function (dataTransfer) {
      return function () {
        return dataTransfer.setData(format, data);
      };
    };
  };
};
