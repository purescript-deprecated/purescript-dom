"use strict";

exports.length = function (list) {
  return function () {
    return list.length;
  };
};

exports._item = function (index) {
  return function (list) {
    return function () {
      return list.item(index);
    };
  };
};

exports._namedItem = function (name) {
  return function (list) {
    return function () {
      return list.namedItem(name);
    };
  };
};
