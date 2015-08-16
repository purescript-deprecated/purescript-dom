/* global exports */
"use strict";

// module DOM.Node.NonDocumentTypeChildNode

exports.getElementById = function (id) {
  return function (node) {
    return function () {
      return node.getElementById(id);
    };
  };
};
