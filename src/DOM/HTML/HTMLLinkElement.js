"use strict";

exports.disabled = function (link) {
  return function () {
    return link.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (link) {
    return function () {
      link.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports.href = function (link) {
  return function () {
    return link.href;
  };
};

exports.setHref = function (href) {
  return function (link) {
    return function () {
      link.href = href;
    };
  };
};

// ----------------------------------------------------------------------------

exports.crossOrigin = function (link) {
  return function () {
    return link.crossOrigin;
  };
};

exports.setCrossOrigin = function (crossOrigin) {
  return function (link) {
    return function () {
      link.crossOrigin = crossOrigin;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rel = function (link) {
  return function () {
    return link.rel;
  };
};

exports.setRel = function (rel) {
  return function (link) {
    return function () {
      link.rel = rel;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rev = function (link) {
  return function () {
    return link.rev;
  };
};

exports.setRev = function (rev) {
  return function (link) {
    return function () {
      link.rev = rev;
    };
  };
};

// ----------------------------------------------------------------------------

exports.relList = function (link) {
  return function () {
    return link.relList;
  };
};

// ----------------------------------------------------------------------------

exports.media = function (link) {
  return function () {
    return link.media;
  };
};

exports.setMedia = function (media) {
  return function (link) {
    return function () {
      link.media = media;
    };
  };
};

// ----------------------------------------------------------------------------

exports.hreflang = function (link) {
  return function () {
    return link.hreflang;
  };
};

exports.setHreflang = function (hreflang) {
  return function (link) {
    return function () {
      link.hreflang = hreflang;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (link) {
  return function () {
    return link.type;
  };
};

exports.setType = function (type) {
  return function (link) {
    return function () {
      link.type = type;
    };
  };
};
