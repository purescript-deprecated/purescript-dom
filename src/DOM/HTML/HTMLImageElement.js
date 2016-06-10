/* global Image */
"use strict";

exports.create = function () {
  return function () {
    return new Image();
  };
};

exports["create'"] = function (width) {
  return function (height) {
    return function () {
      return new Image(width, height);
    };
  };
};

// ----------------------------------------------------------------------------

exports.alt = function (image) {
  return function () {
    return image.alt;
  };
};

exports.setAlt = function (alt) {
  return function (image) {
    return function () {
      image.alt = alt;
    };
  };
};

// ----------------------------------------------------------------------------

exports.src = function (image) {
  return function () {
    return image.src;
  };
};

exports.setSrc = function (src) {
  return function (image) {
    return function () {
      image.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.crossOrigin = function (image) {
  return function () {
    return image.crossOrigin;
  };
};

exports.setCrossOrigin = function (crossOrigin) {
  return function (image) {
    return function () {
      image.crossOrigin = crossOrigin;
    };
  };
};

// ----------------------------------------------------------------------------

exports.useMap = function (image) {
  return function () {
    return image.useMap;
  };
};

exports.setUseMap = function (useMap) {
  return function (image) {
    return function () {
      image.useMap = useMap;
    };
  };
};

// ----------------------------------------------------------------------------

exports.isMap = function (image) {
  return function () {
    return image.isMap;
  };
};

exports.setIsMap = function (isMap) {
  return function (image) {
    return function () {
      image.isMap = isMap;
    };
  };
};

// ----------------------------------------------------------------------------

exports.width = function (image) {
  return function () {
    return image.width;
  };
};

exports.setWidth = function (width) {
  return function (image) {
    return function () {
      image.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (image) {
  return function () {
    return image.height;
  };
};

exports.setHeight = function (height) {
  return function (image) {
    return function () {
      image.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports.naturalWidth = function (image) {
  return function () {
    return image.naturalWidth;
  };
};

exports.naturalHeight = function (image) {
  return function () {
    return image.naturalHeight;
  };
};

// ----------------------------------------------------------------------------

exports.complete = function (image) {
  return function () {
    return image.complete;
  };
};
