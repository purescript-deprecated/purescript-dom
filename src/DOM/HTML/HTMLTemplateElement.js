/* global exports */
"use strict";

// module DOM.HTML.HTMLTemplateElement

exports.content = function (template) {
  return function () {
    return template.content;
  };
};
