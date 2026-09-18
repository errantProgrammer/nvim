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
  -- Figura SVG
  s(
    "svg",
    fmt(
      [[
\begin{figure}[ht]
  \centering
  \def\svgwidth{<1>cm}
  \import{<2>}{<3>.pdf_tex}
  \caption{<4>}
  \label{fig:<5>}
\end{figure}
]],
      {
        i(1, "size"),
        i(2, "figuras/"),
        i(3, "name-figure"),
        i(4, "caption"),
        i(5, "img"),
      },
      { delimiters = "<>" }
    )
  ),

  -- Algoritmo
  s(
    "algo",
    fmt(
      [[
\begin{algorithm}
  \TitleOfAlgo{<1>}
  \SetAlgoLined
  \KwData{<2>}
  \KwResult{<3>}
  \SetAlgoRefName{<4>}
  \caption{<5>}
  \label{algo:<6>}
\end{algorithm}
]],
      {
        i(1, "Title of Algorithm"),
        i(2, "Data"),
        i(3, "Result"),
        i(4, "Reference of Algorithm"),
        i(5, "Caption of Algorithm"),
        i(6, "label"),
      },
      { delimiters = "<>" }
    )
  ),

  -- Bloque de código
  s(
    "codebox",
    fmt(
      [[
\begin{codebox}[<1>]{<2>}
<3>
\end{codebox}
]],
      {
        i(1, "Lenguaje de Programación"),
        i(2, "Titulo"),
        i(3, "codigo"),
      },
      { delimiters = "<>" }
    )
  ),

  -- Código en línea
  s(
    "codeinline",
    fmt(
      [[
\mintinline{<1>}{<2>}
]],
      {
        i(1, "Lenguaje de Programación"),
        i(2, "Codigo"),
      },
      { delimiters = "<>" }
    )
  ),

  -- Flagbox
  s(
    "flagbox",
    fmt(
      [[
\begin{flagbox}{<1>}
<2>
\end{flagbox}
]],
      {
        i(1, "titulo"),
        i(2, "flag"),
      },
      { delimiters = "<>" }
    )
  ),
}
