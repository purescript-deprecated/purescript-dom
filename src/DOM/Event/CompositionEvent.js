/* global CompositionEvent */
"use strict";

exports._eventToCompositionEvent = function (just) {
  return function (nothing) {
    return function (e) {
      return e instanceof CompositionEvent ? just(e) : nothing;
    };
  };
};

exports.data_ = function (e) {
  return e.data;
};
