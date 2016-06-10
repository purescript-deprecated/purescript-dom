"use strict";

exports.body = function (doc) {
  return function () {
    return doc.body;
  };
};
