"use strict";

var getEffProp = function (name) {
  return function (doc) {
    return function () {
      return doc[name];
    };
  };
};

exports.url = getEffProp("URL");
exports.documentURI = getEffProp("documentURI");
exports.origin = getEffProp("origin");
exports.compatMode = getEffProp("compatMode");
exports.characterSet = getEffProp("characterSet");
exports.contentType = getEffProp("contentType");

exports._doctype = getEffProp("doctype");
exports._documentElement = getEffProp("documentElement");

exports.getElementsByTagName = function (localName) {
  return function (doc) {
    return function () {
      return doc.getElementsByTagName(localName);
    };
  };
};

exports._getElementsByTagNameNS = function (ns) {
  return function (localName) {
    return function (doc) {
      return function () {
        return doc.getElementsByTagNameNS(ns, localName);
      };
    };
  };
};

exports.getElementsByClassName = function (classNames) {
  return function (doc) {
    return function () {
      return doc.getElementsByClassName(classNames);
    };
  };
};

exports.createElement = function (localName) {
  return function (doc) {
    return function () {
      return doc.createElement(localName);
    };
  };
};

exports._createElementNS = function (ns) {
  return function (qualifiedName) {
    return function (doc) {
      return function () {
        return doc.createElementNS(ns, qualifiedName);
      };
    };
  };
};

exports.createDocumentFragment = function (doc) {
  return function () {
    return doc.createDocumentFragment();
  };
};

exports.createTextNode = function (data) {
  return function (doc) {
    return function () {
      return doc.createTextNode(data);
    };
  };
};

exports.createComment = function (data) {
  return function (doc) {
    return function () {
      return doc.createComment(data);
    };
  };
};

exports.createProcessingInstruction = function (target) {
  return function (data) {
    return function (doc) {
      return function () {
        return doc.createProcessingInstruction(target, data);
      };
    };
  };
};

exports.importNode = function (node) {
  return function (deep) {
    return function (doc) {
      return function () {
        return doc.importNode(node, deep);
      };
    };
  };
};

exports.adoptNode = function (node) {
  return function (doc) {
    return function () {
      return doc.adoptNode(node);
    };
  };
};
