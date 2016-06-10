"use strict";

exports.colSpan = function (cell) {
  return function () {
    return cell.colSpan;
  };
};

exports.setColSpan = function (colSpan) {
  return function (cell) {
    return function () {
      cell.colSpan = colSpan;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rowSpan = function (cell) {
  return function () {
    return cell.rowSpan;
  };
};

exports.setRowSpan = function (rowSpan) {
  return function (cell) {
    return function () {
      cell.rowSpan = rowSpan;
    };
  };
};

// ----------------------------------------------------------------------------

exports.cellIndex = function (cell) {
  return function () {
    return cell.cellIndex;
  };
};
