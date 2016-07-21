/* global FocusEvent */
"use strict";

exports._eventToFocusEvent = function (just) {
  return function (nothing) {
    return function (e) {
      return e instanceof FocusEvent ? just(e) : nothing;
    };
  };
};

exports.relatedTargetNullable = function (e) {
  return e.relatedTarget;
};
