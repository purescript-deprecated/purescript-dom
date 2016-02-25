/* global exports */
"use strict";

// module DOM.HTML.HTMLTableSectionElement

exports.rows = function (section) {
  return function () {
    return section.rows;
  };
};

// ----------------------------------------------------------------------------

exports["insertRow'"] = function (section) {
  return function (index) {
    return function () {
      return section.insertRow(index);
    };
  };
};

// ----------------------------------------------------------------------------

exports.deleteRow = function (section) {
  return function (index) {
    return function () {
      section.deleteRow(index);
    };
  };
};
