"use strict";

exports.value = function (data) {
  return function () {
    return data.value;
  };
};

exports.setValue = function (value) {
  return function (data) {
    return function () {
      data.value = value;
    };
  };
};
