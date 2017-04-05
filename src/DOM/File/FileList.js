"use strict";

exports.length = function (fileList) { return fileList.length; };

exports._item = function (index) {
  return function (fileList) {
    return fileList.item(index);
  };
};
