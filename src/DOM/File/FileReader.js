/* global FileReader */
"use strict";

exports.fileReader = function () { return new FileReader(); };

exports.error = function (fr) { return function () { return fr.error; }; };

exports.readyStateImpl = function (fr) { return function () { return fr.readyState; }; };

exports.result = function (fr) { return function () { return fr.result; }; };

exports.abort = function (fr) { return function () { fr.abort(); }; };

exports.readAsText = function (blob) {
  return function (fr) {
    return function () {
      fr.readAsText(blob);
    };
  };
};

exports.readAsArrayBuffer = function (blob) {
  return function (fr) {
    return function () {
      fr.readAsArrayBuffer(blob);
    };
  };
};

exports.readAsDataURL = function (blob) {
  return function (fr) {
    return function () {
      fr.readAsDataURL(blob);
    };
  };
};
