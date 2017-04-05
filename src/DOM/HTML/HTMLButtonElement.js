"use strict";

exports.autofocus = function (button) {
  return function () {
    return button.autofocus;
  };
};

exports.setAutofocus = function (autofocus) {
  return function (button) {
    return function () {
      button.autofocus = autofocus;
    };
  };
};

// ----------------------------------------------------------------------------

exports.disabled = function (button) {
  return function () {
    return button.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (button) {
    return function () {
      button.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (button) {
  return function () {
    return button.form;
  };
};

// ----------------------------------------------------------------------------

exports.formAction = function (button) {
  return function () {
    return button.formAction;
  };
};

exports.setFormAction = function (formAction) {
  return function (button) {
    return function () {
      button.formAction = formAction;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formEnctype = function (button) {
  return function () {
    return button.formEnctype;
  };
};

exports.setFormEnctype = function (formEnctype) {
  return function (button) {
    return function () {
      button.formEnctype = formEnctype;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formMethod = function (button) {
  return function () {
    return button.formMethod;
  };
};

exports.setFormMethod = function (formMethod) {
  return function (button) {
    return function () {
      button.formMethod = formMethod;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formNoValidate = function (button) {
  return function () {
    return button.formNoValidate;
  };
};

exports.setFormNoValidate = function (formNoValidate) {
  return function (button) {
    return function () {
      button.formNoValidate = formNoValidate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formTarget = function (button) {
  return function () {
    return button.formTarget;
  };
};

exports.setFormTarget = function (formTarget) {
  return function (button) {
    return function () {
      button.formTarget = formTarget;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (button) {
  return function () {
    return button.name;
  };
};

exports.setName = function (name) {
  return function (button) {
    return function () {
      button.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (button) {
  return function () {
    return button.type;
  };
};

exports.setType = function (type) {
  return function (button) {
    return function () {
      button.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (button) {
  return function () {
    return button.value;
  };
};

exports.setValue = function (value) {
  return function (button) {
    return function () {
      button.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (button) {
  return function () {
    return button.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (button) {
  return function () {
    return button.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (button) {
  return function () {
    return button.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (button) {
  return function () {
    return button.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (button) {
    return function () {
      button.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (button) {
  return function () {
    return button.labels;
  };
};
