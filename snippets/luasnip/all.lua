-- https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua
local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

return {
	s("hello", {
		t("Hello, my name is "),
		i(1, "eduardo"),
		t("welcome in multiple casings: "),
		f(function(args)
			return require("textcase").api.to_snake_case(args[1][1])
		end, { 1 }),
		f(function(args)
			return require("textcase").api.to_camel_case(args[1][1])
		end, { 1 }),
		f(function(args)
			return require("textcase").api.to_dash_case(args[1][1])
		end, { 1 }),
	}),

	s(
		"branch",
		f(function()
			return vim.fn.system({ "git", "branch" })
		end)
	),
	s("date", {
		t("today's date is: "),
		f(function()
			return os.date("%Y-%m-%d")
		end),
	}),

        python = {
        s({ trig = 'cls', dscr = 'Documented Class Structure' }, {
            t('class '),
            i(1, { 'CLASS' }),
            t('('),
            i(2, { '' }),
            t({ '):', '\t' }),
            t({ 'def init(self,' }),
            i(3),
            t({ '):', '\t\t' }),
            d(4, pycdoc, { 3 }, { user_args = 2 }),
            f(function(args)
                if not args[1][1] or args[1][1] == '' then
                    return { '' }
                end
                local a = vim.tbl_map(function(item)
                    local trimed = vim.trim(item)
                    return '\t\tself.' .. trimed .. ' = ' .. trimed
                end, vim.split(
                        args[1][1],
                        ',',
                        true
                    ))
                return a
            end, {
                    3,
                }),
            i(0),
        }),
        s({ trig = 'fn', dscr = 'Documented Function Structure' }, {
            t('def '),
            i(1, { 'function' }),
            t('('),
            i(2),
            t({ '):', '\t' }),
            d(3, pyfdoc, { 2 }, { user_args = 1 }),
        }),
    },
}
