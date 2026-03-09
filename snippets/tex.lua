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
    "pucp-report",
    fmt(
      [[
\documentclass[12pt,a4paper,twoside]{{article}}

\usepackage[utf8]{{inputenc}}
\usepackage[spanish]{{babel}}
\usepackage[T1]{{fontenc}}
\usepackage{{pucp_reports}}

\universidad{{{}}}
\facultad{{{}}}
\logo{{{}}}
\curso{{{}}}
\profesor{{{}}}
\alumno{{{}}}
\ciclo{{{}}}

\begin{{document}}
\portada
\tableofcontents
\newpage
\listoffigures
\newpage
\listoftables
\end{{document}}
    ]],
      {
        -- Aquí definimos los saltos para rellenar tu plantilla
        i(1, "Pontificia Universidad Católica del Perú"),
        i(2, "Ciencias e Ingeniería"),
        i(3, "logo_pucp.png"),
        i(4, "Nombre del Curso"),
        i(5, "Nombre del Profesor"),
        i(6, "Tu Nombre y Código"),
        i(7, "2026-1"),
      }
    )
  ),
  s(
    "pucp-beamer",
    fmt(
      [[
\documentclass[10pt,aspectratio=169]{{beamer}}

\usepackage{{pucp_beamer}}
\usepackage{{minted}}

\title{{ {} }}
\subtitle{{ {} }}
\author{{ {} }}
\institute[ {} ]{{ {} }}
\date{{\today}}

\begin{{document}}
\maketitle
\end{{document}}
  ]],
      {
        i(1, "Titulo de la presentacion"),
        i(2, "Subtitulo de la presentacion"),
        i(3, "Nombre de los autores"),
        i(4, "PUCP"),
        i(5, "Pontificia Universidad Católica del Perú"),
      }
    )
  ),
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
}
