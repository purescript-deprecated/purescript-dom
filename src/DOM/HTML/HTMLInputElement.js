"use strict";

exports.accept = function (input) {
  return function () {
    return input.accept;
  };
};

exports.setAccept = function (accept) {
  return function (input) {
    return function () {
      input.accept = accept;
    };
  };
};

// ----------------------------------------------------------------------------

exports.alt = function (input) {
  return function () {
    return input.alt;
  };
};

exports.setAlt = function (alt) {
  return function (input) {
    return function () {
      input.alt = alt;
    };
  };
};

// ----------------------------------------------------------------------------

exports.autocomplete = function (input) {
  return function () {
    return input.autocomplete;
  };
};

exports.setAutocomplete = function (autocomplete) {
  return function (input) {
    return function () {
      input.autocomplete = autocomplete;
    };
  };
};

// ----------------------------------------------------------------------------

exports.autofocus = function (input) {
  return function () {
    return input.autofocus;
  };
};

exports.setAutofocus = function (autofocus) {
  return function (input) {
    return function () {
      input.autofocus = autofocus;
    };
  };
};

// ----------------------------------------------------------------------------

exports.defaultChecked = function (input) {
  return function () {
    return input.defaultChecked;
  };
};

exports.setDefaultChecked = function (defaultChecked) {
  return function (input) {
    return function () {
      input.defaultChecked = defaultChecked;
    };
  };
};

// ----------------------------------------------------------------------------

exports.checked = function (input) {
  return function () {
    return input.checked;
  };
};

exports.setChecked = function (checked) {
  return function (input) {
    return function () {
      input.checked = checked;
    };
  };
};

// ----------------------------------------------------------------------------

exports.dirName = function (input) {
  return function () {
    return input.dirName;
  };
};

exports.setDirName = function (dirName) {
  return function (input) {
    return function () {
      input.dirName = dirName;
    };
  };
};

// ----------------------------------------------------------------------------

exports.disabled = function (input) {
  return function () {
    return input.disabled;
  };
};

exports.setDisabled = function (disabled) {
  return function (input) {
    return function () {
      input.disabled = disabled;
    };
  };
};

// ----------------------------------------------------------------------------

exports._form = function (input) {
  return function () {
    return input.form;
  };
};

// ----------------------------------------------------------------------------

exports._files = function (input) {
  return function () {
    return input.files;
  };
};

// ----------------------------------------------------------------------------

exports.formAction = function (input) {
  return function () {
    return input.formAction;
  };
};

exports.setFormAction = function (formAction) {
  return function (input) {
    return function () {
      input.formAction = formAction;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formEnctype = function (input) {
  return function () {
    return input.formEnctype;
  };
};

exports.setFormEnctype = function (formEnctype) {
  return function (input) {
    return function () {
      input.formEnctype = formEnctype;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formMethod = function (input) {
  return function () {
    return input.formMethod;
  };
};

exports.setFormMethod = function (formMethod) {
  return function (input) {
    return function () {
      input.formMethod = formMethod;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formNoValidate = function (input) {
  return function () {
    return input.formNoValidate;
  };
};

exports.setFormNoValidate = function (formNoValidate) {
  return function (input) {
    return function () {
      input.formNoValidate = formNoValidate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.formTarget = function (input) {
  return function () {
    return input.formTarget;
  };
};

exports.setFormTarget = function (formTarget) {
  return function (input) {
    return function () {
      input.formTarget = formTarget;
    };
  };
};

// ----------------------------------------------------------------------------

exports.height = function (input) {
  return function () {
    return input.height;
  };
};

exports.setHeight = function (height) {
  return function (input) {
    return function () {
      input.height = height;
    };
  };
};

// ----------------------------------------------------------------------------

exports.indeterminate = function (input) {
  return function () {
    return input.indeterminate;
  };
};

exports.setIndeterminate = function (indeterminate) {
  return function (input) {
    return function () {
      input.indeterminate = indeterminate;
    };
  };
};

// ----------------------------------------------------------------------------

exports._list = function (input) {
  return function () {
    return input.list;
  };
};

// ----------------------------------------------------------------------------

exports.max = function (input) {
  return function () {
    return input.max;
  };
};

exports.setMax = function (max) {
  return function (input) {
    return function () {
      input.max = max;
    };
  };
};

// ----------------------------------------------------------------------------

exports.maxLength = function (input) {
  return function () {
    return input.maxLength;
  };
};

exports.setMaxLength = function (maxLength) {
  return function (input) {
    return function () {
      input.maxLength = maxLength;
    };
  };
};

// ----------------------------------------------------------------------------

exports.min = function (input) {
  return function () {
    return input.min;
  };
};

exports.setMin = function (min) {
  return function (input) {
    return function () {
      input.min = min;
    };
  };
};

// ----------------------------------------------------------------------------

exports.minLength = function (input) {
  return function () {
    return input.minLength;
  };
};

exports.setMinLength = function (minLength) {
  return function (input) {
    return function () {
      input.minLength = minLength;
    };
  };
};

// ----------------------------------------------------------------------------

exports.multiple = function (input) {
  return function () {
    return input.multiple;
  };
};

exports.setMultiple = function (multiple) {
  return function (input) {
    return function () {
      input.multiple = multiple;
    };
  };
};

// ----------------------------------------------------------------------------

exports.name = function (input) {
  return function () {
    return input.name;
  };
};

exports.setName = function (name) {
  return function (input) {
    return function () {
      input.name = name;
    };
  };
};

// ----------------------------------------------------------------------------

exports.pattern = function (input) {
  return function () {
    return input.pattern;
  };
};

exports.setPattern = function (pattern) {
  return function (input) {
    return function () {
      input.pattern = pattern;
    };
  };
};

// ----------------------------------------------------------------------------

exports.placeholder = function (input) {
  return function () {
    return input.placeholder;
  };
};

exports.setPlaceholder = function (placeholder) {
  return function (input) {
    return function () {
      input.placeholder = placeholder;
    };
  };
};

// ----------------------------------------------------------------------------

exports.readOnly = function (input) {
  return function () {
    return input.readOnly;
  };
};

exports.setReadOnly = function (readOnly) {
  return function (input) {
    return function () {
      input.readOnly = readOnly;
    };
  };
};

// ----------------------------------------------------------------------------

exports.required = function (input) {
  return function () {
    return input.required;
  };
};

exports.setRequired = function (required) {
  return function (input) {
    return function () {
      input.required = required;
    };
  };
};

// ----------------------------------------------------------------------------

exports.size = function (input) {
  return function () {
    return input.size;
  };
};

exports.setSize = function (size) {
  return function (input) {
    return function () {
      input.size = size;
    };
  };
};

// ----------------------------------------------------------------------------

exports.src = function (input) {
  return function () {
    return input.src;
  };
};

exports.setSrc = function (src) {
  return function (input) {
    return function () {
      input.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.step = function (input) {
  return function () {
    return input.step;
  };
};

exports.setStep = function (step) {
  return function (input) {
    return function () {
      input.step = step;
    };
  };
};

// ----------------------------------------------------------------------------

exports.type_ = function (input) {
  return function () {
    return input.type;
  };
};

exports.setType = function (type) {
  return function (input) {
    return function () {
      input.type = type;
    };
  };
};

// ----------------------------------------------------------------------------

exports.defaultValue = function (input) {
  return function () {
    return input.defaultValue;
  };
};

exports.setDefaultValue = function (defaultValue) {
  return function (input) {
    return function () {
      input.defaultValue = defaultValue;
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (input) {
  return function () {
    return input.value;
  };
};

exports.setValue = function (value) {
  return function (input) {
    return function () {
      input.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.valueAsDate = function (input) {
  return function () {
    return input.valueAsDate;
  };
};

exports.setValueAsDate = function (valueAsDate) {
  return function (input) {
    return function () {
      input.valueAsDate = valueAsDate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.valueAsNumber = function (input) {
  return function () {
    return input.valueAsNumber;
  };
};

exports.setValueAsNumber = function (valueAsNumber) {
  return function (input) {
    return function () {
      input.valueAsNumber = valueAsNumber;
    };
  };
};

// ----------------------------------------------------------------------------

exports.width = function (input) {
  return function () {
    return input.width;
  };
};

exports.setWidth = function (width) {
  return function (input) {
    return function () {
      input.width = width;
    };
  };
};

// ----------------------------------------------------------------------------

exports["stepUp'"] = function (n) {
  return function (input) {
    return function () {
      input.stepUp(n);
    };
  };
};

// ----------------------------------------------------------------------------

exports["stepDown'"] = function (n) {
  return function (input) {
    return function () {
      input.stepDown(n);
    };
  };
};

// ----------------------------------------------------------------------------

exports.value = function (input) {
  return function () {
    return input.value;
  };
};

exports.setValue = function (value) {
  return function (input) {
    return function () {
      input.value = value;
    };
  };
};

// ----------------------------------------------------------------------------

exports.willValidate = function (input) {
  return function () {
    return input.willValidate;
  };
};

// ----------------------------------------------------------------------------

exports.validity = function (input) {
  return function () {
    return input.validity;
  };
};

// ----------------------------------------------------------------------------

exports.validationMessage = function (input) {
  return function () {
    return input.validationMessage;
  };
};

// ----------------------------------------------------------------------------

exports.checkValidity = function (input) {
  return function () {
    return input.checkValidity;
  };
};

// ----------------------------------------------------------------------------

exports.setCustomValidity = function (value) {
  return function (input) {
    return function () {
      input.setCustomValidity(value);
    };
  };
};

// ----------------------------------------------------------------------------

exports.labels = function (input) {
  return function () {
    return input.labels;
  };
};

// ----------------------------------------------------------------------------

exports.select = function (input) {
  return function () {
    input.select();
  };
};

// ----------------------------------------------------------------------------

exports.selectionStart = function (input) {
  return function () {
    return input.selectionStart;
  };
};

exports.setSelectionStart = function (selectionStart) {
  return function (input) {
    return function () {
      input.selectionStart = selectionStart;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selectionEnd = function (input) {
  return function () {
    return input.selectionEnd;
  };
};

exports.setSelectionEnd = function (selectionEnd) {
  return function (input) {
    return function () {
      input.selectionEnd = selectionEnd;
    };
  };
};

// ----------------------------------------------------------------------------

exports.selectionDirection = function (input) {
  return function () {
    return input.selectionDirection;
  };
};

exports.setSelectionDirection = function (selectionDirection) {
  return function (input) {
    return function () {
      input.selectionDirection = selectionDirection;
    };
  };
};

// ----------------------------------------------------------------------------

exports.setRangeText = function (replacement) {
  return function (input) {
    return function () {
      input.setRangeText(replacement);
    };
  };
};

exports["setRangeText'"] = function (replacement) {
  return function (start) {
    return function (end) {
      return function (selectionMode) {
        return function (input) {
          return function () {
            input.setRangeText(replacement, start, end, selectionMode, input);
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
      return function (input) {
        return function () {
          input.setSelectionRange(start, end, direction, input);
        };
      };
    };
  };
};
