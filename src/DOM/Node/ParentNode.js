"use strict";

var getEffProp = function (name) {
  return function (node) {
    return function () {
      return node[name];
    };
  };
};

exports.children = getEffProp("children");

exports._firstElementChild = getEffProp("firstElementChild");

exports._lastElementChild = getEffProp("lastElementChild");

exports.childElementCount = getEffProp("childElementCount");

exports._querySelector = function (selector) {
  return function (node) {
    return function () {
      return node.querySelector(selector);
    };
  };
};

exports.querySelectorAll = function (selector) {
  return function (node) {
    return function () {
      return node.querySelectorAll(selector);
    };
  };
};
