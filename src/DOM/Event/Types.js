/* global EventTarget */
"use strict";

exports._readEventTarget = function (left) {
  return function (right) {
    return function (foreign) {
      return foreign instanceof EventTarget ? right(foreign) : left("Value is not an EventTarget");
    };
  };
};
