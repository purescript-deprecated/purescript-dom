"use strict";

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

exports.name = getProp("name");
exports.publicId = getProp("publicId");
exports.systemId = getProp("systemId");
