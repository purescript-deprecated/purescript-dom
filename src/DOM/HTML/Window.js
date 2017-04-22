"use strict";

exports.document = function (window) {
  return function () {
    return window.document;
  };
};

exports.navigator = function (window) {
  return function () {
    return window.navigator;
  };
};

exports.location = function (window) {
  return function () {
    return window.location;
  };
};

exports.history = function(window) {
  return function() {
    return window.history;
  };
};

exports.innerWidth = function (window) {
  return function () {
    return window.innerWidth;
  };
};

exports.innerHeight = function (window) {
  return function () {
    return window.innerHeight;
  };
};

exports.alert = function (str) {
  return function (window) {
    return function () {
      window.alert(str);
      return {};
    };
  };
};

exports.confirm = function (str) {
  return function (window) {
    return function () {
      return window.confirm(str);
    };
  };
};

exports.moveBy = function (xDelta) {
  return function (yDelta) {
    return function (window) {
      return function () {
        window.moveBy(xDelta, yDelta);
        return {};
      };
    };
  };
};

exports.moveTo = function (width) {
  return function (height) {
    return function (window) {
      return function () {
        window.moveTo(width, height);
        return {};
      };
    };
  };
};

exports._open = function (url) {
  return function (name) {
    return function (features) {
      return function (window) {
        return function () {
          return window.open(url, name, features);
        };
      };
    };
  };
};

exports.outerHeight = function (window) {
  return function () {
    return window.outerHeight;
  };
};

exports.outerWidth = function (window) {
  return function () {
    return window.outerWidth;
  };
};

exports.print = function (window) {
  return function () {
    window.print();
    return {};
  };
};

exports._prompt = function (str) {
  return function (defaultText) {
    return function (window) {
      return function () {
        return window.prompt(str, defaultText);
      };
    };
  };
};

exports.resizeBy = function (xDelta) {
  return function (yDelta) {
    return function (window) {
      return function () {
        window.resizeBy(xDelta, yDelta);
        return {};
      };
    };
  };
};

exports.resizeTo = function (width) {
  return function (height) {
    return function (window) {
      return function () {
        window.resizeTo(width, height);
        return {};
      };
    };
  };
};

exports.screenX = function (window) {
  return function () {
    return window.screenX;
  };
};

exports.screenY = function (window) {
  return function () {
    return window.screenY;
  };
};

exports.scroll = function (xCoord) {
  return function (yCoord) {
    return function (window) {
      return function () {
        window.scroll(xCoord, yCoord);
        return {};
      };
    };
  };
};

exports.scrollBy = function (xCoord) {
  return function (yCoord) {
    return function (window) {
      return function () {
        window.scrollBy(xCoord, yCoord);
        return {};
      };
    };
  };
};

exports.scrollX = function (window) {
  return function () {
    return window.scrollX;
  };
};

exports.scrollY = function (window) {
  return function () {
    return window.scrollY;
  };
};

exports.url = function (window) {
  return function () {
    return window.URL;
  };
};

exports.localStorage = function (window) {
  return function () {
    return window.localStorage;
  };
};

exports.sessionStorage = function (window) {
  return function () {
    return window.sessionStorage;
  };
};

exports._requestAnimationFrame = function(fn) {
  return function(window) {
    return function() {
      return window.requestAnimationFrame(fn);
    };
  };
};

exports._cancelAnimationFrame = function(id) {
  return function(window) {
    return function() {
      return window.cancelAnimationFrame(id);
    };
  };
};

exports._requestIdleCallback = function(opts) {
  return function(fn) {
    return function(window) {
      return function() {
        return window.requestIdleCallback(fn, opts);
      };
    };
  };
};

exports._cancelIdleCallback = function(id) {
  return function(window) {
    return function() {
      return window.cancelIdleCallback(id);
    };
  };
};
