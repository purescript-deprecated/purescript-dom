"use strict";

exports.length = function (storage) {
  return function () {
    return storage.length;
  };
};

exports._key = function (index) {
  return function (storage) {
    return function () {
      return storage.key(index);
    };
  };
};

exports._getItem = function (key) {
  return function (storage) {
    return function () {
      return storage.getItem(key);
    };
  };
};

exports.setItem = function (key) {
  return function (value) {
    return function (storage) {
      return function () {
        storage.setItem(key, value);
      };
    };
  };
};

exports.removeItem = function (key) {
  return function (storage) {
    return function () {
      storage.removeItem(key);
    };
  };
};

exports.clear = function (storage) {
  return function () {
    storage.clear();
  };
};
