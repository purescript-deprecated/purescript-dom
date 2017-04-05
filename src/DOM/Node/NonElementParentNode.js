"use strict";

exports._getElementById = function (id) {
  return function (node) {
    return function () {
      return node.getElementById(id);
    };
  };
};
