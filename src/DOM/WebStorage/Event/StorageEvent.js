"use strict";

exports.key = function (storage) {
  return function () {
    return storage.key;
  };
};

exports.oldValue = function (storage) {
  return function () {
    return storage.oldValue;
  };
};

exports.newValue = function (storage) {
  return function () {
    return storage.newValue;
  };
};

exports.url = function (storage) {
  return function () {
    return storage.url;
  };
};

exports.storageArea = function (storage) {
  return function () {
    return storage.storageArea;
  };
};
