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

exports.dropEffectImpl = function (dataTransfer) {
  return function () {
    return dataTransfer.dropEffect;
  };
};

exports.setDropEffectImpl = function (e) {
  return function (dataTransfer) {
    return function () {
      dataTransfer.dropEffect = e;
    };
  };
};
