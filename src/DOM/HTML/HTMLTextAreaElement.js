"use strict";

exports.autocomplete = function (textarea) {
  return function () {
    return textarea.autocomplete;
  };
};

exports.setAutocomplete = function (autocomplete) {
  return function (textarea) {
    return function () {
      textarea.autocomplete = autocomplete;
    };
  };
};

// ----------------------------------------------------------------------------

exports.autofocus = function (textarea) {
  return function () {
    return textarea.autofocus;
  };
};

exports.setAutofocus = function (autofocus) {
  return function (textarea) {
    return function () {
      textarea.autofocus = autofocus;
    };
  };
};

// ----------------------------------------------------------------------------

exports.cols = function (textarea) {
  return function () {
    return textarea.cols;
  };
};

exports.setCols = function (cols) {
  return function (textarea) {
    return function () {
      textarea.cols = cols;
    };
  };
};

// ----------------------------------------------------------------------------

exports.dirName = function (textarea) {
  return function () {
    return textarea.dirName;
  };
};

exports.setDirName = function (dirName) {
  return function (textarea) {
    return function () {
      textarea.dirName = dirName;
    };
  };
};

// ----------------------------------------------------------------------------

exports.disabled = function (textarea) {
  return function () {
    return textarea.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (textarea) {
    return function () {
      textarea.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (textarea) {
  return function () {
    return textarea.form;
  };
};

// ----------------------------------------------------------------------------

exports.maxLength = function (textarea) {
  return function () {
    return textarea.maxLength;
  };
};

exports.setMaxLength = function (maxLength) {
  return function (textarea) {
    return function () {
      textarea.maxLength = maxLength;
    };
  };
};

// ----------------------------------------------------------------------------

exports.minLength = function (textarea) {
  return function () {
    return textarea.minLength;
  };
};

exports.setMinLength = function (minLength) {
  return function (textarea) {
    return function () {
      textarea.minLength = minLength;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (textarea) {
  return function () {
    return textarea.name;
  };
};

exports.setName = function (name) {
  return function (textarea) {
    return function () {
      textarea.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.placeholder = function (textarea) {
  return function () {
    return textarea.placeholder;
  };
};

exports.setPlaceholder = function (placeholder) {
  return function (textarea) {
    return function () {
      textarea.placeholder = placeholder;
    };
  };
};

// ----------------------------------------------------------------------------

exports.readOnly = function (textarea) {
  return function () {
    return textarea.readOnly;
  };
};

exports.setReadOnly = function (readOnly) {
  return function (textarea) {
    return function () {
      textarea.readOnly = readOnly;
    };
  };
};

// ----------------------------------------------------------------------------

exports.required = function (textarea) {
  return function () {
    return textarea.required;
  };
};

exports.setRequired = function (required) {
  return function (textarea) {
    return function () {
      textarea.required = required;
    };
  };
};

// ----------------------------------------------------------------------------

exports.rows = function (textarea) {
  return function () {
    return textarea.rows;
  };
};

exports.setRows = function (rows) {
  return function (textarea) {
    return function () {
      textarea.rows = rows;
    };
  };
};

// ----------------------------------------------------------------------------

exports.wrap = function (textarea) {
  return function () {
    return textarea.wrap;
  };
};

exports.setWrap = function (wrap) {
  return function (textarea) {
    return function () {
      textarea.wrap = wrap;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (textarea) {
  return function () {
    return textarea.type;
  };
};

// ----------------------------------------------------------------------------

exports.defaultValue = function (textarea) {
  return function () {
    return textarea.defaultValue;
  };
};

exports.setDefaultValue = function (defaultValue) {
  return function (textarea) {
    return function () {
      textarea.defaultValue = defaultValue;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (textarea) {
  return function () {
    return textarea.value;
  };
};

exports.setValue = function (value) {
  return function (textarea) {
    return function () {
      textarea.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.textLength = function (textarea) {
  return function () {
    return textarea.textLength;
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (textarea) {
  return function () {
    return textarea.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (textarea) {
  return function () {
    return textarea.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (textarea) {
  return function () {
    return textarea.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (textarea) {
  return function () {
    return textarea.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (textarea) {
    return function () {
      textarea.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (textarea) {
  return function () {
    return textarea.labels;
  };
};

// ----------------------------------------------------------------------------

exports.select = function (textarea) {
  return function () {
    textarea.select();
  };
};

// ----------------------------------------------------------------------------

exports.selectionStart = function (textarea) {
  return function () {
    return textarea.selectionStart;
  };
};

exports.setSelectionStart = function (selectionStart) {
  return function (textarea) {
    return function () {
      textarea.selectionStart = selectionStart;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selectionEnd = function (textarea) {
  return function () {
    return textarea.selectionEnd;
  };
};

exports.setSelectionEnd = function (selectionEnd) {
  return function (textarea) {
    return function () {
      textarea.selectionEnd = selectionEnd;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selectionDirection = function (textarea) {
  return function () {
    return textarea.selectionDirection;
  };
};

exports.setSelectionDirection = function (selectionDirection) {
  return function (textarea) {
    return function () {
      textarea.selectionDirection = selectionDirection;
    };
  };
};

// ----------------------------------------------------------------------------

exports.setRangeText = function (replacement) {
  return function (textarea) {
    return function () {
      textarea.setRangeText(replacement);
    };
  };
};

exports["setRangeText'"] = function (replacement) {
  return function (start) {
    return function (end) {
      return function (selectionMode) {
        return function (textarea) {
          return function () {
            textarea.setRangeText(replacement, start, end, selectionMode);
          };
        };
      };
    };
  };
};

// ----------------------------------------------------------------------------

exports.setSelectionRange = function (start) {
  return function (end) {
    return function (direction) {
      return function (textarea) {
        return function () {
          textarea.setSelectionRange(start, end, direction);
        };
      };
    };
  };
};
