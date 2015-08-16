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

gulp.task("docs", ["clean-docs"], function () {
  return purescript.pscDocs({
      src: sources,
      docgen: {
        "DOM": "docs/DOM.md",
        "DOM.Event.Event": "docs/DOM/Event/Event.md",
        "DOM.Event.EventPhase": "docs/DOM/Event/EventPhase.md",
        "DOM.Event.EventTarget": "docs/DOM/Event/EventTarget.md",
        "DOM.File.Types": "docs/DOM/File/Types.md",
        "DOM.HTML": "docs/DOM/HTML.md",
        "DOM.HTML.Document": "docs/DOM/HTML/Document.md",
        "DOM.HTML.Types": "docs/DOM/HTML/Types.md",
        "DOM.HTML.Window": "docs/DOM/HTML/Window.md",
        "DOM.Node.ChildNode": "docs/DOM/Node/ChildNode.md",
        "DOM.Node.Document": "docs/DOM/Node/Document.md",
        "DOM.Node.DocumentType": "docs/DOM/Node/DocumentType.md",
        "DOM.Node.Element": "docs/DOM/Node/Element.md",
        "DOM.Node.HTMLCollection": "docs/DOM/Node/HTMLCollection.md",
        "DOM.Node.Node": "docs/DOM/Node/Node.md",
        "DOM.Node.NodeList": "docs/DOM/Node/NodeList.md",
        "DOM.Node.NodeType": "docs/DOM/Node/NodeType.md",
        "DOM.Node.NonDocumentTypeChildNode": "docs/DOM/Node/NonDocumentTypeChildNode.md",
        "DOM.Node.NonElementParentNode": "docs/DOM/Node/NonElementParentNode.md",
        "DOM.Node.ParentNode": "docs/DOM/Node/ParentNode.md",
        "DOM.Node.Types": "docs/DOM/Node/Types.md",
        "DOM.XHR.Types": "docs/DOM/XHR/Types.md",
      }
    });
});

gulp.task("dotpsci", function () {
  return purescript.psci({ src: sources, ffi: foreigns })
    .pipe(gulp.dest("."));
});

gulp.task("default", ["make", "docs", "dotpsci"]);
