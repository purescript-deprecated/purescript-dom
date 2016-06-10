"use strict";

// ----------------------------------------------------------------------------

exports.width = function (video) {
  return function () {
    return video.width;
  };
};

exports.setWidth = function (width) {
  return function (video) {
    return function () {
      video.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (video) {
  return function () {
    return video.height;
  };
};

exports.setHeight = function (height) {
  return function (video) {
    return function () {
      video.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports.videoWidth = function (video) {
  return function () {
    return video.videoWidth;
  };
};

// ----------------------------------------------------------------------------

exports.videoHeight = function (video) {
  return function () {
    return video.videoHeight;
  };
};

// ----------------------------------------------------------------------------

exports.poster = function (video) {
  return function () {
    return video.poster;
  };
};

exports.setPoster = function (poster) {
  return function (video) {
    return function () {
      video.poster = poster;
    };
  };
};
