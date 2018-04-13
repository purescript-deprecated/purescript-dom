"use strict";

exports._unsafeReadProtoTagged = (function () {
  var tagOf = function (value) {
    return Object.prototype.toString.call(value).slice(8, -1);
  };
  return function (name) {
    return function (failure) {
      return function (success) {
        return function (value) {
          var obj = value;
          while (obj != null) {
            var proto = Object.getPrototypeOf(obj);
            var ctor = tagOf(proto);
            if (ctor === name) {
              return success(value);
            } else if (ctor === "Object") {
              return failure(tagOf(value));
            }
            obj = proto;
          }
          return failure(tagOf(value));
        };
      };
    };
  };
}());
