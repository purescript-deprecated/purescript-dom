"use strict";

exports.identifier = function (t) {
  return t.identifier;
};

exports.screenX = function (t) {
  return t.screenX;
};

exports.screenY = function (t) {
  return t.screenY;
};

exports.clientX = function (t) {
  return t.clientX;
};

exports.clientY = function (t) {
  return t.clientY;
};

exports.pageX = function (t) {
  return t.pageX;
};

exports.pageY = function (t) {
  return t.pageY;
};

exports.target = function (t) {
  return t.target;
};

exports.length = function (l) {
  return l.length;
};

exports._item = function (i) {
  return function(l) {
    return l.item(i);
  };
};

exports.touches = function (e) {
  return e.touches;
};

exports.targetTouches = function (e) {
  return e.targetTouches;
};

exports.changedTouches = function (e) {
  return e.changedTouches;
};

exports.altKey = function (e) {
  return e.altKey;
};

exports.metaKey = function (e) {
  return e.metaKey;
};

exports.ctrlKey = function (e) {
  return e.ctrlKey;
};

exports.shiftKey = function (e) {
  return e.shiftKey;
};
