"""
Rule to convert file with [pandoc](https://pandoc.org/).
"""

def _pandoc_implementation(ctx):
    pandoc_toolchain = ctx.toolchains["@mgred_rules_pandoc//pandoc:toolchain_type"]
    pandoc = pandoc_toolchain.pandocinfo
    args = ctx.actions.args()

    args.add("--output", ctx.outputs.out)

    if ctx.attr.standalone:
        args.add("--standalone")
        args.add("--metadata", "title=%s" % ctx.attr.title)

    if ctx.attr.to:
        args.add("--to", ctx.attr.to)

    _from = getattr(ctx.attr, "from")
    if _from:
        args.add("--from", _from)

    if ctx.attr.toc:
        args.add("--table-of-contents")

    args.add(ctx.file.input)

    ctx.actions.run(
        outputs = [ctx.outputs.out],
        inputs = [ctx.file.input],
        arguments = [args],
        mnemonic = "PandocConvert",
        executable = pandoc.target_tool_path,
        tools = pandoc.tool_files,
        toolchain = "@mgred_rules_pandoc//pandoc:toolchain",
    )

pandoc = rule(
    attrs = {
        "out": attr.output(
            doc = "output file",
        ),
        "input": attr.label(
            mandatory = True,
            allow_single_file = True,
            doc = "input file to convert",
        ),
        "from": attr.string(),
        "to": attr.string(),
        "title": attr.string(),
        "standalone": attr.bool(
            default = False,
        ),
        "toc": attr.bool(
            default = False,
        ),
    },
    implementation = _pandoc_implementation,
    toolchains = [
        "@mgred_rules_pandoc//pandoc:toolchain_type",
    ],
)
