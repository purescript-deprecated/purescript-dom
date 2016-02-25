/* global exports */
"use strict";

// module DOM.HTML.HTMLMapElement

exports.name = function (map) {
  return function () {
    return map.name;
  };
};

exports.setDisabled = function (name) {
  return function (map) {
    return function () {
      map.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.areas = function (map) {
  return function () {
    return map.areas;
  };
};

// ----------------------------------------------------------------------------

exports.images = function (map) {
  return function () {
    return map.images;
  };
};
