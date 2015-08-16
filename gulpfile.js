/* jshint node: true */
"use strict";

var gulp = require("gulp");
var purescript = require("gulp-purescript");
var rimraf = require("rimraf");

var sources = [
  "src/**/*.purs",
  "bower_components/purescript-*/src/**/*.purs"
];

var foreigns = [
  "src/**/*.js",
  "bower_components/purescript-*/src/**/*.js"
];

gulp.task("clean-docs", function (cb) {
  rimraf("docs", cb);
});

gulp.task("clean-output", function (cb) {
  rimraf("output", cb);
});

gulp.task("clean", ["clean-docs", "clean-output"]);

gulp.task("make", function() {
  return purescript.psc({ src: sources, ffi: foreigns });
});

// gulp.task("docs", ["clean-docs"], function () {
//   return purescript.pscDocs({
//       src: sources,
//       docgen: {
//         "DOM": "docs/DOM.md",
//         "DOM.File": "docs/DOM/File.md",
//         "DOM.XHR": "docs/DOM/XHR.md"
//       }
//     });
// });

gulp.task("dotpsci", function () {
  return purescript.psci({ src: sources, ffi: foreigns })
    .pipe(gulp.dest("."));
});

gulp.task("default", ["make", "dotpsci"]);
// gulp.task("default", ["make", "docs", "dotpsci"]);
