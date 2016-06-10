"use strict";

exports.name = function (map) {
  return function () {
    return map.name;
  };
};

exports.setName = function (name) {
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
