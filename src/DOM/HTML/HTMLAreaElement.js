"use strict";

exports.alt = function (area) {
  return function () {
    return area.alt;
  };
};

exports.setAlt = function (alt) {
  return function (area) {
    return function () {
      area.alt = alt;
    };
  };
};

// ----------------------------------------------------------------------------

exports.coords = function (area) {
  return function () {
    return area.coords;
  };
};

exports.setCoords = function (coords) {
  return function (area) {
    return function () {
      area.coords = coords;
    };
  };
};

// ----------------------------------------------------------------------------

exports.shape = function (area) {
  return function () {
    return area.shape;
  };
};

exports.setShape = function (shape) {
  return function (area) {
    return function () {
      area.shape = shape;
    };
  };
};

// ----------------------------------------------------------------------------

exports.target = function (area) {
  return function () {
    return area.target;
  };
};

exports.setTarget = function (target) {
  return function (area) {
    return function () {
      area.target = target;
    };
  };
};

// ----------------------------------------------------------------------------

exports.download = function (area) {
  return function () {
    return area.download;
  };
};

exports.setDownload = function (download) {
  return function (area) {
    return function () {
      area.download = download;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rel = function (area) {
  return function () {
    return area.rel;
  };
};

exports.setRel = function (rel) {
  return function (area) {
    return function () {
      area.rel = rel;
    };
  };
};

// ----------------------------------------------------------------------------

exports.relList = function (area) {
  return function () {
    return area.relList;
  };
};

// ----------------------------------------------------------------------------

exports.hreflang = function (area) {
  return function () {
    return area.hreflang;
  };
};

exports.setHreflang = function (hreflang) {
  return function (area) {
    return function () {
      area.hreflang = hreflang;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (area) {
  return function () {
    return area.type;
  };
};

exports.setType = function (type) {
  return function (area) {
    return function () {
      area.type = type;
    };
  };
};
