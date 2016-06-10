"use strict";

exports.target = function (a) {
  return function () {
    return a.target;
  };
};

exports.setTarget = function (target) {
  return function (a) {
    return function () {
      a.target = target;
    };
  };
};

// ----------------------------------------------------------------------------

exports.download = function (a) {
  return function () {
    return a.download;
  };
};

exports.setDownload = function (download) {
  return function (a) {
    return function () {
      a.download = download;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rel = function (a) {
  return function () {
    return a.rel;
  };
};

exports.setRel = function (rel) {
  return function (a) {
    return function () {
      a.rel = rel;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rev = function (a) {
  return function () {
    return a.rev;
  };
};

exports.setRev = function (rev) {
  return function (a) {
    return function () {
      a.rev = rev;
    };
  };
};

// ----------------------------------------------------------------------------

exports.relList = function (a) {
  return function () {
    return a.relList;
  };
};

// ----------------------------------------------------------------------------

exports.hreflang = function (a) {
  return function () {
    return a.hreflang;
  };
};

exports.setHreflang = function (hreflang) {
  return function (a) {
    return function () {
      a.hreflang = hreflang;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (a) {
  return function () {
    return a.type;
  };
};

exports.setType = function (type) {
  return function (a) {
    return function () {
      a.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.text = function (a) {
  return function () {
    return a.text;
  };
};

exports.setText = function (text) {
  return function (a) {
    return function () {
      a.text = text;
    };
  };
};
