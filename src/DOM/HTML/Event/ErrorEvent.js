"use strict";

// module DOM.Event.ErrorEvent

exports.message = function (e) {
  return e.message;
};

exports.fileName = function (e) {
  return e.filename;
};

exports.lineNo = function (e) {
  return e.lineno;
};

exports.colNo = function (e) {
  return e.colno;
};
