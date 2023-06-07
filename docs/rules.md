<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="pandoc"></a>

## pandoc

<pre>
pandoc(<a href="#pandoc-name">name</a>, <a href="#pandoc-args">args</a>, <a href="#pandoc-from">from</a>, <a href="#pandoc-input">input</a>, <a href="#pandoc-out">out</a>, <a href="#pandoc-standalone">standalone</a>, <a href="#pandoc-title">title</a>, <a href="#pandoc-to">to</a>, <a href="#pandoc-toc">toc</a>)
</pre>



**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="pandoc-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="pandoc-args"></a>args |  -   | List of strings | optional | <code>[]</code> |
| <a id="pandoc-from"></a>from |  -   | String | optional | <code>""</code> |
| <a id="pandoc-input"></a>input |  input file to convert   | <a href="https://bazel.build/concepts/labels">Label</a> | required |  |
| <a id="pandoc-out"></a>out |  output file   | <a href="https://bazel.build/concepts/labels">Label</a> | optional |  |
| <a id="pandoc-standalone"></a>standalone |  -   | Boolean | optional | <code>False</code> |
| <a id="pandoc-title"></a>title |  -   | String | optional | <code>""</code> |
| <a id="pandoc-to"></a>to |  -   | String | optional | <code>""</code> |
| <a id="pandoc-toc"></a>toc |  -   | Boolean | optional | <code>False</code> |


