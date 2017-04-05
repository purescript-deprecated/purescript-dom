"use strict";

exports._previousElementSibling = function (node) {
  return function () {
    return node.previousElementSibling;
  };
};

exports._nextElementSibling = function (node) {
  return function () {
    return node.nextElementSibling;
  };
};
