"use strict";

// ----------------------------------------------------------------------------

exports.title = function (elt) {
  return function () {
    return elt.title;
  };
};

exports.setTitle = function (title) {
  return function (elt) {
    return function () {
      elt.title = title;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.lang = function (elt) {
  return function () {
    return elt.lang;
  };
};

exports.setLang = function (lang) {
  return function (elt) {
    return function () {
      elt.lang = lang;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.dir = function (elt) {
  return function () {
    return elt.dir;
  };
};

exports.setDir = function (dir) {
  return function (elt) {
    return function () {
      elt.dir = dir;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.className = function (elt) {
  return function () {
    return elt.className;
  };
};

exports.setClassName = function (className) {
  return function (elt) {
    return function () {
      elt.className = className;
      return {};
    };
  };
};

exports.classList = function (element) {
  return function () {
    return element.classList;
  };
};

// ----------------------------------------------------------------------------

exports.hidden = function (elt) {
  return function () {
    return elt.hidden;
  };
};

exports.setHidden = function (hidden) {
  return function (elt) {
    return function () {
      elt.hidden = hidden;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.tabIndex = function (elt) {
  return function () {
    return elt.tabIndex;
  };
};

exports.setTabIndex = function (tabIndex) {
  return function (elt) {
    return function () {
      elt.tabIndex = tabIndex;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.draggable = function (elt) {
  return function () {
    return elt.draggable;
  };
};

exports.setDraggable = function (draggable) {
  return function (elt) {
    return function () {
      elt.draggable = draggable;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.contentEditable = function (elt) {
  return function () {
    return elt.contentEditable;
  };
};

exports.setContentEditable = function (contentEditable) {
  return function (elt) {
    return function () {
      elt.contentEditable = contentEditable;
      return {};
    };
  };
};

exports.isContentEditable = function (elt) {
  return function () {
    return elt.isContentEditable;
  };
};

// ----------------------------------------------------------------------------

exports.spellcheck = function (elt) {
  return function () {
    return elt.spellcheck;
  };
};

exports.setSpellcheck = function (spellcheck) {
  return function (elt) {
    return function () {
      elt.spellcheck = spellcheck;
      return {};
    };
  };
};

// ----------------------------------------------------------------------------

exports.click = function (elt) {
  return function () {
    return elt.click();
  };
};

exports.focus = function (elt) {
  return function () {
    return elt.focus();
  };
};

exports.blur = function (elt) {
  return function () {
    return elt.blur();
  };
};

// - CSSOM ---------------------------------------------------------------------

exports.getBoundingClientRect = function (el) {
  return function () {
    var rect = el.getBoundingClientRect();
    return {
      top: rect.top,
      right: rect.right,
      bottom: rect.bottom,
      left: rect.left,
      width: rect.width,
      height: rect.height
    };
  };
};

exports._offsetParent = function (el) {
  return function () {
    return el.offsetParent;
  };
};

exports.offsetTop = function (el) {
  return function () {
    return el.offsetTop;
  };
};

exports.offsetLeft = function (el) {
  return function () {
    return el.offsetLeft;
  };
};

exports.offsetWidth = function (el) {
  return function () {
    return el.offsetWidth;
  };
};

exports.offsetHeight = function (el) {
  return function () {
    return el.offsetHeight;
  };
};
