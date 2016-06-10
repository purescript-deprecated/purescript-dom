"use strict";

exports.content = function (template) {
  return function () {
    return template.content;
  };
};
