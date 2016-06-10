"use strict";

exports.rowIndex = function (row) {
  return function () {
    return row.rowIndex;
  };
};

// ----------------------------------------------------------------------------

exports.sectionRowIndex = function (row) {
  return function () {
    return row.sectionRowIndex;
  };
};

// ----------------------------------------------------------------------------

exports.cells = function (row) {
  return function () {
    return row.cells;
  };
};

// ----------------------------------------------------------------------------

exports.cells = function (row) {
  return function () {
    return row.cells;
  };
};

// ----------------------------------------------------------------------------

exports["insertCell'"] = function (index) {
  return function (row) {
    return function () {
      return row.insertCell(index);
    };
  };
};

// ----------------------------------------------------------------------------

exports.deleteCell = function (index) {
  return function (row) {
    return function () {
      row.deleteCell(index);
    };
  };
};
