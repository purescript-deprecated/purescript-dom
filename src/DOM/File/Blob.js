"use strict";

exports.typeImpl = function (blob) { return blob.type; };

exports.size = function (blob) { return blob.size; };

exports.slice = function (contentType) {
  return function (start) {
    return function (end) {
      return function (blob) {
        return blob.slice(start, end, contentType);
      };
    };
  };
};
