"use strict";

exports.mutationObserver = function (cb) {
  return function () {
    return new MutationObserver(function (mr, mo) {
      return cb(mr)(mo)();
    });
  };
};

exports._observe = function (node) {
  return function (config) {
    return function (mo) {
      return function () {
        return mo.observe(node, config);
      };
    };
  };
};

exports.disconnect = function (mo) {
  return function () {
    return mo.disconnect();
  };
};

exports.takeRecords = function (mo) {
  return function () {
    return mo.takeRecords();
  };
};
