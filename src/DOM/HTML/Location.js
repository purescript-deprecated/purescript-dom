/* global exports */
"use strict";

// module DOM.HTML.Location

exports.hash = function (location) {
  return function () {
    return location.hash;
  };
};

exports.setHash = function (location) {
  return function (hash) {
    return function () {
      location.hash = hash;
    };
  };
};

exports.host = function (location) {
  return function () {
    return location.host;
  };
};

exports.setHost = function (location) {
  return function (host) {
    return function () {
      location.host = host;
    };
  };
};

exports.hostname = function (location) {
  return function () {
    return location.hostname;
  };
};

exports.setHostname = function (location) {
  return function (hostname) {
    return function () {
      location.hostname = hostname;
    };
  };
};

exports.href = function (location) {
  return function () {
    return location.href;
  };
};

exports.setHref = function (location) {
  return function (href) {
    return function () {
      location.href = href;
    };
  };
};

exports.origin = function (location) {
  return function () {
    return location.origin;
  };
};

exports.setOrigin = function (location) {
  return function (origin) {
    return function () {
      location.origin = origin;
    };
  };
};

exports.pathname = function (location) {
  return function () {
    return location.pathname;
  };
};

exports.setPathname = function (location) {
  return function (pathname) {
    return function () {
      location.pathname = pathname;
    };
  };
};

exports.port = function (location) {
  return function () {
    return location.port;
  };
};

exports.setPort = function (location) {
  return function (port) {
    return function () {
      location.port = port;
    };
  };
};

exports.protocol = function (location) {
  return function () {
    return location.protocol;
  };
};

exports.setProtocol = function (location) {
  return function (protocol) {
    return function () {
      location.protocol = protocol;
    };
  };
};

exports.search = function (location) {
  return function () {
    return location.search;
  };
};

exports.setSearch = function (location) {
  return function (search) {
    return function () {
      location.search = search;
    };
  };
};

exports.assign = function (location) {
  return function (url) {
    return function () {
      location.assign(url);
    };
  };
};

exports.replace = function (location) {
  return function (url) {
    return function () {
      location.replace(url);
    };
  };
};

exports.reload = function (location) {
  return function (args) {
    return function() {
      location.reload(args.forceGet);
    };
  };
};
