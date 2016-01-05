/* global exports */
"use strict";

// module DOM.HTML.Location

exports.hash = function (location) {
  return function () {
    return location.hash;
  };
};

exports.host = function (location) {
  return function () {
    return location.host;
  };
};

exports.hostname = function (location) {
  return function () {
    return location.hostname;
  };
};

exports.href = function (location) {
  return function () {
    return location.href;
  };
};

exports.origin = function (location) {
  return function () {
    return location.origin;
  };
};

exports.pathname = function (location) {
  return function () {
    return location.pathname;
  };
};

exports.port = function (location) {
  return function () {
    return location.port;
  };
};

exports.protocol = function (location) {
  return function () {
    return location.protocol;
  };
};

exports.search = function (location) {
  return function () {
    return location.search;
  };
};
