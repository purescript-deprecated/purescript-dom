"use strict";

exports.src = function (media) {
  return function () {
    return media.src;
  };
};

exports.setSrc = function (src) {
  return function (media) {
    return function () {
      media.src = src;
    };
  };
};

// ----------------------------------------------------------------------------

exports.currentSrc = function (media) {
  return function () {
    return media.currentSrc;
  };
};

// ----------------------------------------------------------------------------

exports.crossOrigin = function (media) {
  return function () {
    return media.crossOrigin;
  };
};

exports.setCrossOrigin = function (crossOrigin) {
  return function (media) {
    return function () {
      media.crossOrigin = crossOrigin;
    };
  };
};

// ----------------------------------------------------------------------------

exports.networkStateIndex = function (media) {
  return function () {
    return media.networkState;
  };
};

// ----------------------------------------------------------------------------

exports.preload = function (media) {
  return function () {
    return media.preload;
  };
};

exports.setPreload = function (preload) {
  return function (media) {
    return function () {
      media.preload = preload;
    };
  };
};

// ----------------------------------------------------------------------------

exports.load = function (media) {
  return function () {
    return media.load();
  };
};

// ----------------------------------------------------------------------------

exports.canPlayType = function (type) {
  return function (media) {
    return function () {
      return media.canPlayType(type);
    };
  };
};

// ----------------------------------------------------------------------------

exports.readyStateIndex = function (media) {
  return function () {
    return media.readyState;
  };
};

// ----------------------------------------------------------------------------

exports.seeking = function (media) {
  return function () {
    return media.seeking;
  };
};

// ----------------------------------------------------------------------------

exports.currentTime = function (media) {
  return function () {
    return media.currentTime;
  };
};

exports.setCurrentTime = function (currentTime) {
  return function (media) {
    return function () {
      media.currentTime = currentTime;
    };
  };
};

// ----------------------------------------------------------------------------

exports.duration = function (media) {
  return function () {
    return media.duration;
  };
};

// ----------------------------------------------------------------------------

exports.getStartDate = function (media) {
  return function () {
    return media.getStartDate();
  };
};

// ----------------------------------------------------------------------------

exports.paused = function (media) {
  return function () {
    return media.paused;
  };
};

// ----------------------------------------------------------------------------

exports.defaultPlaybackRate = function (media) {
  return function () {
    return media.defaultPlaybackRate;
  };
};

exports.setDefaultPlaybackRate = function (defaultPlaybackRate) {
  return function (media) {
    return function () {
      media.defaultPlaybackRate = defaultPlaybackRate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.playbackRate = function (media) {
  return function () {
    return media.playbackRate;
  };
};

exports.setPlaybackRate = function (playbackRate) {
  return function (media) {
    return function () {
      media.playbackRate = playbackRate;
    };
  };
};

// ----------------------------------------------------------------------------

exports.ended = function (media) {
  return function () {
    return media.ended;
  };
};

// ----------------------------------------------------------------------------

exports.autoplay = function (media) {
  return function () {
    return media.autoplay;
  };
};

exports.setAutoplay = function (autoplay) {
  return function (media) {
    return function () {
      media.autoplay = autoplay;
    };
  };
};

// ----------------------------------------------------------------------------

exports.loop = function (media) {
  return function () {
    return media.loop;
  };
};

exports.setLoop = function (loop) {
  return function (media) {
    return function () {
      media.loop = loop;
    };
  };
};

// ----------------------------------------------------------------------------

exports.play = function (media) {
  return function () {
    media.play();
  };
};

// ----------------------------------------------------------------------------

exports.pause = function (media) {
  return function () {
    media.pause();
  };
};

// ----------------------------------------------------------------------------

exports.mediaGroup = function (media) {
  return function () {
    return media.mediaGroup;
  };
};

exports.setMediaGroup = function (mediaGroup) {
  return function (media) {
    return function () {
      media.mediaGroup = mediaGroup;
    };
  };
};

// ----------------------------------------------------------------------------

exports.controls = function (media) {
  return function () {
    return media.controls;
  };
};

exports.setControls = function (controls) {
  return function (media) {
    return function () {
      media.controls = controls;
    };
  };
};

// ----------------------------------------------------------------------------

exports.volume = function (media) {
  return function () {
    return media.volume;
  };
};

exports.setVolume = function (volume) {
  return function (media) {
    return function () {
      media.volume = volume;
    };
  };
};

// ----------------------------------------------------------------------------

exports.muted = function (media) {
  return function () {
    return media.muted;
  };
};

exports.setMuted = function (muted) {
  return function (media) {
    return function () {
      media.muted = muted;
    };
  };
};

// ----------------------------------------------------------------------------

exports.defaultMuted = function (media) {
  return function () {
    return media.defaultMuted;
  };
};

exports.setDefaultMuted = function (defaultMuted) {
  return function (media) {
    return function () {
      media.defaultMuted = defaultMuted;
    };
  };
};
