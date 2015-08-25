/* global exports */
"use strict";

// module DOM.HTML.Types

exports._readHTMLElement = function (failure) {
  return function (success) {
    return function (value) {
      var tag = Object.prototype.toString.call(value);
      if (tag.indexOf("[object HTML") === 0 && tag.indexOf("Element]") === tag.length - 8) {
        return success(value);
      } else {
        return failure(tag);
      }
    };
  };
};
