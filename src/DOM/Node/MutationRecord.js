"use strict";

exports.typeString = function (mr) {
  return function () {
    return mr.type;
  };
};

exports.target = function (mr) {
  return function () {
    return mr.target;
  };
};

exports.addedNodes = function (mr) {
  return function () {
    return mr.addedNodes;
  };
};

exports.removedNodes = function (mr) {
  return function () {
    return mr.removedNodes;
  };
};

exports._nextSibling = function (mr) {
  return function () {
    return mr.nextSibling;
  };
};

exports._previousSibling = function (mr) {
  return function () {
    return mr.previousSibling;
  };
};

exports._attributeName = function (mr) {
  return function () {
    return mr.attributeName;
  };
};

exports._attributeNamespace = function (mr) {
  return function () {
    return mr.attributeNamespace;
  };
};

exports._oldValue = function (mr) {
  return function () {
    return mr.oldValue;
  };
};
