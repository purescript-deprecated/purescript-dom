"use strict";

exports.scope = function (cell) {
  return function () {
    return cell.scope;
  };
};

exports.setScope = function (scope) {
  return function (cell) {
    return function () {
      cell.scope = scope;
    };
  };
};

// ----------------------------------------------------------------------------

exports.abbr = function (cell) {
  return function () {
    return cell.abbr;
  };
};

exports.setAbbr = function (abbr) {
  return function (cell) {
    return function () {
      cell.abbr = abbr;
    };
  };
};
