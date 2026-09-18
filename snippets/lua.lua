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
    "snip",
    fmt(
      [[
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

return {{
  <1>
}}
  ]],
      {
        i(1, "--new lua snip"),
      },
      { delimiters = "<>" }
    )
  ),
  s(
    "add-snip",
    fmt(
      [=[
s(
  "<1>",
  fmt(
    [[
<2>
]],
    {
      <3>
    },
    { delimiters = "<<>>" }
  )
),
]=],
      {
        i(1, "trigger"),
        i(2, "contenido"),
        i(3, 'i(1, "placeholder")'),
      },
      { delimiters = "<>" }
    )
  ),
}
