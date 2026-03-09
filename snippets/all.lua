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
    "header",
    fmt(
      [[ 
                              __  ____                                                           
  ___  ______________ _____  / /_/ __ \_________  ____ __________ _____ ___  ____ ___  ___  _____
 / _ \/ ___/ ___/ __ `/ __ \/ __/ /_/ / ___/ __ \/ __ `/ ___/ __ `/ __ `__ \/ __ `__ \/ _ \/ ___/
/  __/ /  / /  / /_/ / / / / /_/ ____/ /  / /_/ / /_/ / /  / /_/ / / / / / / / / / / /  __/ /    
\___/_/  /_/   \__,_/_/ /_/\__/_/   /_/   \____/\__, /_/   \__,_/_/ /_/ /_/_/ /_/ /_/\___/_/     
                                               /____/  
    ]],
      {}
    )
  ),
}
