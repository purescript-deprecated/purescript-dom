"use strict";

exports.name = function (meta) {
  return function () {
    return meta.name;
  };
};

exports.setName = function (name) {
  return function (meta) {
    return function () {
      meta.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.httpEquiv = function (meta) {
  return function () {
    return meta.httpEquiv;
  };
};

exports.setHttpEquiv = function (httpEquiv) {
  return function (meta) {
    return function () {
      meta.httpEquiv = httpEquiv;
    };
  };
};

// ----------------------------------------------------------------------------

exports.content = function (meta) {
  return function () {
    return meta.content;
  };
};

exports.setContent = function (content) {
  return function (meta) {
    return function () {
      meta.content = content;
    };
  };
};
