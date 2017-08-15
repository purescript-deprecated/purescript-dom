"use strict";

exports.create = function (url) {
  return function (protocols) {
    return function () {
      return new WebSocket(url, protocols);
    };
  };
};

exports.url = function (ws) {
  return function () {
    return ws.url;
  };
};

exports.readyStateImpl = function (ws) {
  return function () {
    return ws.readyState;
  };
};

exports.bufferedAmount = function (ws) {
  return function () {
    return ws.bufferedAmount;
  };
};

exports.extensions = function (ws) {
  return function () {
    return ws.extensions;
  };
};

exports.protocol = function (ws) {
  return function () {
    return ws.protocol;
  };
};

exports.close = function (ws) {
  return function () {
    return ws.close();
  };
};

exports.getBinaryTypeImpl = function (ws) {
  return function () {
    return ws.binaryType;
  };
};

exports.setBinaryTypeImpl = function (ws) {
  return function (bt) {
    return function () {
      ws.binaryType = bt;
    };
  };
};

exports.sendImpl = function (ws) {
  return function (value) {
    return function () {
      ws.send(value);
    };
  };
};
