local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("markdown", {
  -- YAML/Pandoc LaTeX page setup
  s(
    "latex",
    t({
      "---",
      "geometry:",
      "  - top=0.55in",
      "  - bottom=0.65in",
      "  - left=0.65in",
      "  - right=0.65in",
      "fontsize: 10pt",
      "---",
    })
  ),

  -- Common writing helpers
  s(
    "let",
    fmt("Let ${}$.", {
      i(1, "x = 1"),
    })
  ),

  s(
    "since",
    fmt("Since ${}$:", {
      i(1, "x \\neq 1"),
    })
  ),

  s(
    "tf",
    fmt("Therefore, ${}$.", {
      i(1, "\\boxed{answer}"),
    })
  ),

  s(
    "ex",
    fmt(
      [[
Example: {}

{}

]],
      {
        i(1, "title"),
        i(0),
      }
    )
  ),

  s(
    "fact",
    fmt(
      [[
> **{}:** {}

]],
      {
        i(1, "Fact"),
        i(2, "statement"),
      }
    )
  ),

  s(
    "def",
    fmt(
      [[
> **{}:** {}

]],
      {
        i(1, "Definition"),
        i(2, "description"),
      }
    )
  ),

  -- Math helpers
  s(
    "frac",
    fmt("\\frac{{{}}}{{{}}}", {
      i(1, "numerator"),
      i(2, "denominator"),
    })
  ),

  s(
    "lim",
    fmt("\\lim_{{{} \\to {}}} {}", {
      i(1, "x"),
      i(2, "a"),
      i(3, "f(x)"),
    })
  ),

  s(
    "dbox",
    fmt(
      [[
$$\boxed{{{}}}$$
]],
      {
        i(1, "answer"),
      }
    )
  ),

  s("fx", t("f(x)")),

  s(
    "pt",
    fmt("({}, {})", {
      i(1, "x"),
      i(2, "y"),
    })
  ),

  s(
    "sq",
    fmt("{}^2", {
      i(1, "x"),
    })
  ),

  s(
    "pow",
    fmt("{}^{{{}}}", {
      i(1, "x"),
      i(2, "n"),
    })
  ),

  s(
    "sub",
    fmt("{}_{{{}}}", {
      i(1, "x"),
      i(2, "1"),
    })
  ),

  s(
    "deriv",
    fmt("\\frac{{d}}{{d{}}} {}", {
      i(1, "x"),
      i(2, "f(x)"),
    })
  ),
  s(
    "ce",
    fmt("\\ce{{{}}}", {
      i(1, "H2O"),
    })
  ),

  s(
    "txt",
    fmt("\\text{{{}}}", {
      i(1, "text"),
    })
  ),

  s(
    "can",
    fmt("\\cancel{{{}}}", {
      i(1, "x"),
    })
  ),

  -- misc.
  s("table", {
    t({
      "| Column 1 | Column 2 | Column 3 |",
      "|----------|----------|----------|",
      "| Data 1   | Data 2   | Data 3   |",
      "| Data 4   | Data 5   | Data 6   |",
    }),
  }),
  s("dropdown", {
    t({ "<details>", "<summary>Here's a dropdown</summary>", "", "Dropdown text here", "</details>" }),
  }),
})
