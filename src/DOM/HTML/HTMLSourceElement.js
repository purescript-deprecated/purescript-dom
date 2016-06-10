"use strict";

exports.src = function (source) {
  return function () {
    return source.src;
  };
};

exports.setSrc = function (src) {
  return function (source) {
    return function () {
      source.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (source) {
  return function () {
    return source.type;
  };
};

exports.setType = function (type) {
  return function (source) {
    return function () {
      source.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.media = function (source) {
  return function () {
    return source.media;
  };
};

exports.setMedia = function (media) {
  return function (source) {
    return function () {
      source.media = media;
    };
  };
};
