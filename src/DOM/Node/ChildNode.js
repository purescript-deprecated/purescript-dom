/* global exports */
"use strict";

// module DOM.Node.ChildNode

exports.remove = function (node) {
  return function () {
    return node.remove();
  };
};
