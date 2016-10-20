"use strict";

exports.files = function (dataTransfer) {
  return dataTransfer.files;
};

exports.types = function (dataTransfer) {
  return dataTransfer.types;
};
