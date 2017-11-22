"use strict";

exports._body = function (doc) {
  return function () {
    return doc.body;
  };
};

exports._readyState = function (doc) {
  return function () {
    return doc.readyState;
  };
};

exports._activeElement = function (doc) {
  return function () {
    return doc.activeElement;
  };
};
