"use strict";

exports._body = function (doc) {
  return function () {
    return doc.body;
  };
};
