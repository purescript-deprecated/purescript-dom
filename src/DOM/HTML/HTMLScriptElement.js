"use strict";

exports.src = function (script) {
  return function () {
    return script.src;
  };
};

exports.setSrc = function (src) {
  return function (script) {
    return function () {
      script.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (script) {
  return function () {
    return script.type;
  };
};

exports.setType = function (type) {
  return function (script) {
    return function () {
      script.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.charset = function (script) {
  return function () {
    return script.charset;
  };
};

exports.setCharset = function (charset) {
  return function (script) {
    return function () {
      script.charset = charset;
    };
  };
};

// ----------------------------------------------------------------------------

exports.async = function (script) {
  return function () {
    return script.async;
  };
};

exports.setAsync = function (async) {
  return function (script) {
    return function () {
      script.async = async;
    };
  };
};

// ----------------------------------------------------------------------------

exports.defer = function (script) {
  return function () {
    return script.defer;
  };
};

exports.setDefer = function (defer) {
  return function (script) {
    return function () {
      script.defer = defer;
    };
  };
};

// ----------------------------------------------------------------------------

exports.crossOrigin = function (script) {
  return function () {
    return script.crossOrigin;
  };
};

exports.setCrossOrigin = function (crossOrigin) {
  return function (script) {
    return function () {
      script.crossOrigin = crossOrigin;
    };
  };
};

// ----------------------------------------------------------------------------

exports.text = function (script) {
  return function () {
    return script.text;
  };
};

exports.setText = function (text) {
  return function (script) {
    return function () {
      script.text = text;
    };
  };
};
