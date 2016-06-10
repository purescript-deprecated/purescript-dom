"use strict";

exports.src = function (embed) {
  return function () {
    return embed.src;
  };
};

exports.setSrc = function (src) {
  return function (embed) {
    return function () {
      embed.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (embed) {
  return function () {
    return embed.type;
  };
};

exports.setType = function (type) {
  return function (embed) {
    return function () {
      embed.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.width = function (embed) {
  return function () {
    return embed.width;
  };
};

exports.setWidth = function (width) {
  return function (embed) {
    return function () {
      embed.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (embed) {
  return function () {
    return embed.height;
  };
};

exports.setHeight = function (height) {
  return function (embed) {
    return function () {
      embed.height = height;
    };
  };
};
