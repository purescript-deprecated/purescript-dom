"use strict";

exports.autofocus = function (select) {
  return function () {
    return select.autofocus;
  };
};

exports.setAutofocus = function (autofocus) {
  return function (select) {
    return function () {
      select.autofocus = autofocus;
    };
  };
};

// ----------------------------------------------------------------------------

exports.disabled = function (select) {
  return function () {
    return select.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (select) {
    return function () {
      select.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports.multiple = function (select) {
  return function () {
    return select.multiple;
  };
};

exports.setMultiple = function (multiple) {
  return function (select) {
    return function () {
      select.multiple = multiple;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (select) {
  return function () {
    return select.form;
  };
};

// ----------------------------------------------------------------------------

exports.name = function (select) {
  return function () {
    return select.name;
  };
};

exports.setName = function (name) {
  return function (select) {
    return function () {
      select.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.required = function (select) {
  return function () {
    return select.required;
  };
};

exports.setRequired = function (required) {
  return function (select) {
    return function () {
      select.required = required;
    };
  };
};

// ----------------------------------------------------------------------------

exports.size = function (select) {
  return function () {
    return select.size;
  };
};

exports.setSize = function (size) {
  return function (select) {
    return function () {
      select.size = size;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (select) {
  return function () {
    return select.type;
  };
};

// ----------------------------------------------------------------------------

exports.length = function (select) {
  return function () {
    return select.length;
  };
};

exports.setLength = function (length) {
  return function (select) {
    return function () {
      select.length = length;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selectedOptions = function (select) {
  return function () {
    return select.selectedOptions;
  };
};

// ----------------------------------------------------------------------------

exports.selectedIndex = function (select) {
  return function () {
    return select.selectedIndex;
  };
};

exports.setSelectedIndex = function (selectedIndex) {
  return function (select) {
    return function () {
      select.selectedIndex = selectedIndex;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (select) {
  return function () {
    return select.value;
  };
};

exports.setValue = function (value) {
  return function (select) {
    return function () {
      select.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (select) {
  return function () {
    return select.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (select) {
  return function () {
    return select.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (select) {
  return function () {
    return select.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (select) {
  return function () {
    return select.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (select) {
    return function () {
      select.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (select) {
  return function () {
    return select.labels;
  };
};
