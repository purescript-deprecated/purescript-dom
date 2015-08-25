/* global exports */
"use strict";

// module DOM.Node.NonDocumentTypeChildNode

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
