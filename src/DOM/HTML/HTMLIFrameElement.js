"use strict";

exports.src = function (iframe) {
  return function () {
    return iframe.src;
  };
};

exports.setSrc = function (src) {
  return function (iframe) {
    return function () {
      iframe.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.srcdoc = function (iframe) {
  return function () {
    return iframe.srcdoc;
  };
};

exports.setSrcdoc = function (srcdoc) {
  return function (iframe) {
    return function () {
      iframe.srcdoc = srcdoc;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (iframe) {
  return function () {
    return iframe.name;
  };
};

exports.setName = function (name) {
  return function (iframe) {
    return function () {
      iframe.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.width = function (iframe) {
  return function () {
    return iframe.width;
  };
};

exports.setWidth = function (width) {
  return function (iframe) {
    return function () {
      iframe.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (iframe) {
  return function () {
    return iframe.height;
  };
};

exports.setHeight = function (height) {
  return function (iframe) {
    return function () {
      iframe.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports._contentDocument = function (iframe) {
  return function () {
    return iframe.contentDocument;
  };
};
