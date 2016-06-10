"use strict";

exports.kind = function (track) {
  return function () {
    return track.kind;
  };
};

exports.setKind = function (kind) {
  return function (track) {
    return function () {
      track.kind = kind;
    };
  };
};

// ----------------------------------------------------------------------------

exports.src = function (track) {
  return function () {
    return track.src;
  };
};

exports.setSrc = function (src) {
  return function (track) {
    return function () {
      track.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.srclang = function (track) {
  return function () {
    return track.srclang;
  };
};

exports.setSrclang = function (srclang) {
  return function (track) {
    return function () {
      track.srclang = srclang;
    };
  };
};

// ----------------------------------------------------------------------------

exports.label = function (track) {
  return function () {
    return track.label;
  };
};

exports.setLabel = function (label) {
  return function (track) {
    return function () {
      track.label = label;
    };
  };
};

// ----------------------------------------------------------------------------

exports["default"] = function (track) {
  return function () {
    return track["default"];
  };
};

exports.setDefault = function (def) {
  return function (track) {
    return function () {
      track["default"] = def;
    };
  };
};

// ----------------------------------------------------------------------------

exports.readyStateIndex = function (track) {
  return function () {
    return track.readyState;
  };
};
