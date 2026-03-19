local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local parse = ls.parser.parser_snippet

return {
  s(
    "svg",
    fmt(
      [[ 
  \begin{{figure}}[ht]
    \centering
    \def\svgwidth{{ {}cm }}
    \import{{ {} }}{{ {}.pdf_tex }}
    \caption{{ {} }}
    \label{{ fig:{} }}
  \end{{figure}}
]],
      {
        i(1, "size"),
        i(2, "figuras/"),
        i(3, "name-figure"),
        i(4, "caption"),
        i(5, "img"),
      }
    )
  ),
  s(
    "algo",
    fmt(
      [[ 
\begin{{algorithm}}
  \TitleOfAlgo{{ {} }}
  \SetAlgoLined
  \KwData{{ {} }}
  \KwResult{{ {} }}
  \SetAlgoRefName{{ {} }}
  \caption{{ {} }}
  \label{{ algo:{} }}
\end{{algorithm}}
    ]],
      {
        i(1, "Title of Algorithm"),
        i(2, "Data"),
        i(3, "Result"),
        i(4, "Reference of Algorithm"),
        i(5, "Caption of Algorithm"),
        i(6, "label"),
      }
    )
  ),
}
