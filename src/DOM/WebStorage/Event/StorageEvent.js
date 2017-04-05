"use strict";

exports._key = function (storage) {
  return storage.key;
};

exports._oldValue = function (storage) {
  return storage.oldValue;
};

exports._newValue = function (storage) {
  return storage.newValue;
};

exports.url = function (storage) {
  return storage.url;
};

exports._storageArea = function (storage) {
  return storage.storageArea;
};
