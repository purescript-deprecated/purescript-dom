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

gulp.task("clean", function (cb) {
  rimraf("output", cb);
});

gulp.task("make", function() {
  return purescript.psc({ src: sources, ffi: foreigns });
});

gulp.task("dotpsci", function () {
  return purescript.psci({ src: sources, ffi: foreigns })
    .pipe(gulp.dest("."));
});

gulp.task("default", ["make", "dotpsci"]);
