/* global exports */
"use strict";

// module DOM.HTML.Navigator

exports.platform = function (navigator) {
  return function () {
    return navigator.platform;
  };
};
