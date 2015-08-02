/* global exports */
"use strict";

// module DOM.Node.NonElementParentNode

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
