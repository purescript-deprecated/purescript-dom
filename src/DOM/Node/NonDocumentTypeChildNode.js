"use strict";

exports.previousElementSibling = function (node) {
  return function () {
    return node.previousElementSibling;
  };
};

exports.nextElementSibling = function (node) {
  return function () {
    return node.nextElementSibling;
  };
};
