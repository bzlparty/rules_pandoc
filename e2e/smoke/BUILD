"""Provides a simple way to test your rules as an external workspace.
Add a basic smoke-test target below.
"""

load("@bazel_skylib//rules:build_test.bzl", "build_test")
load("@bazel_skylib//rules:write_file.bzl", "write_file")
load("@mgred_rules_pandoc//pandoc:defs.bzl", "pandoc")

write_file(
    name = "input_md",
    out = "input.md",
    content = [
        "# Hello, World",
        "",
        "`rules_pandoc` is awesome!",
    ],
)

# Replace with a usage of your rule/macro
pandoc(
    name = "html",
    out = "input.html",
    input = "input.md",
)

build_test(
    name = "smoke_test",
    targets = [
        ":html",
    ],
)
