"use strict";

exports.length = function (list) {
  return function () {
    return list.length;
  };
};

exports.item = function (index) {
  return function (list) {
    return function () {
      return list.item(index);
    };
  };
};

exports.namedItem = function (name) {
  return function (list) {
    return function () {
      return list.namedItem(name);
    };
  };
};
