"use strict";

exports._unsafeReadProtoTagged = function (name) {
  return function (failure) {
    return function (success) {
      return function (value) {
        var obj = value;
        while (obj != null) {
          var proto = Object.getPrototypeOf(obj);
          var ctor = proto.constructor.name;
          if (ctor === name) {
            return success(value);
          } else if (ctor === "Object") {
            return failure(Object.getPrototypeOf(value).constructor.name);
          }
          obj = proto;
        }
        return failure(Object.getPrototypeOf(value).constructor.name);
      };
    };
  };
};
