/* global exports */
"use strict";

// module DOM.HTML.Document

exports.body = function (doc) {
  return function () {
    return doc.body;
  };
};
