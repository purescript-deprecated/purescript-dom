"use strict";

exports.key = function (storage) {
  return storage.key;
};

exports.oldValue = function (storage) {
  return storage.oldValue;
};

exports.newValue = function (storage) {
  return storage.newValue;
};

exports.url = function (storage) {
  return storage.url;
};

exports.storageArea = function (storage) {
  return storage.storageArea;
};
