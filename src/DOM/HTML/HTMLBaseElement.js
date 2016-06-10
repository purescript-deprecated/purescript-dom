"use strict";

exports.href = function (base) {
  return function () {
    return base.href;
  };
};

exports.setHref = function (href) {
  return function (base) {
    return function () {
      base.href = href;
    };
  };
};

// ----------------------------------------------------------------------------

exports.target = function (base) {
  return function () {
    return base.target;
  };
};

exports.setTarget = function (target) {
  return function (base) {
    return function () {
      base.target = target;
    };
  };
};
