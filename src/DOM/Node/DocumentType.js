/* global exports */
"use strict";

// module DOM.Node.DocumentType

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

exports.name = getProp("name");
exports.publicId = getProp("publicId");
exports.systemId = getProp("systemId");
