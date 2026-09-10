local ls = require("luasnip")
local extras = require("luasnip.extras")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = extras.rep
local l = extras.lambda
local dl = extras.dynamic_lambda
local p = extras.partial

vim.keymap.set({ "i", "s" }, "<C-K>", function()
	ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
	ls.jump(-1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

ls.add_snippets("all", {
	s("clg", fmt("console.log({});", { i(0) })),
	s("cld", fmt('console.log("{}:", {});', { rep(1), i(1) })),
	s("cdr", fmt("console.dir({});", { i(0) })),
	s("cer", fmt("console.err({});", { i(0) })),
	s("/**",
		fmt(
			"/**\n* {}\n*\n* @param {} - {}\n* @returns {}\n*\n* @example\n* ```\n* {}\n* ```\n*/",
			{ i(1), i(2), i(3), i(4), i(0) }
		)
	),
	s("/*", fmt("/**\n* {}\n*/", { i(0) })),
})

-- For Svelte +page.server.ts
ls.add_snippets("typescript", {
	s(
		"!load",
		fmt(
			"export {}function load({}) {{\n\t{}\n}}",
			{ c(1, { t("async "), t("") }), c(2, { t(""), fmt("{{ {} }}: LoadEvent", i(1)) }), i(0) }
		)
	),
})

ls.add_snippets("svelte", {
	s("!script", fmt('<script lang="ts">\n\t{}\n</script>', { i(0) })),
	s("!props", fmt("interface Props {{\n\t{}\n}}\n\nlet {{ {} }}: Props = $props();", { i(1), i(0) })),
	s("!layout", { t({ '<script lang="ts">','\tconst { children } = $props();', "</script>", "", '{@render children()}' }) }),
	s("!state", fmt("let {} = $state<{}>({});", { i(1), i(2), i(0) })),
	s("!derived", fmt("let {} = $derived({});", { i(1), i(0) })),
	s("!derivedBy", fmt("let {} = $derived.by(() => {{\n\t{}\n\treturn;\n}});", { i(1), i(0) })),
})

ls.add_snippets("typescriptreact", {
	s(
		"rfce",
		fmt(
			"const {} = () => {{\n\treturn (\n\t\t<div>{}</div>\n\t);\n}};\n\nexport default {};",
			{ dl(1, l.TM_FILENAME:gsub(".tsx", "")), rep(1), rep(1) }
		)
	),
	s(
		"rfc",
		fmt(
			"export const {} = () => {{\n\treturn (\n\t\t<div>{}</div>\n\t);\n}};",
			{ dl(1, l.TM_FILENAME:gsub(".tsx", "")), rep(1) }
		)
	),
	s(
		"ust",
		fmt("const [{}, set{}] = useState<{}>({});", {
			i(1),
			f(function(var_name)
				return (string.gsub(var_name[1][1], "^%l", string.upper))
			end, { 1 }),
			i(2),
			i(0),
		})
	),
	s("uef", fmt("useEffect(() => {{\n\t{}\n}}, [{}]);", { i(0), i(1) })),
})

ls.add_snippets("go", {
	s("enn", fmt("if err != nil {{\n\t{}\n}}", { i(0) })),
	s("aer", fmt('{}, err := {}\nif err != nil {{\n\tlog.Fatal("{}", err)\n}}', { i(1), i(2), i(0) })),
})

ls.add_snippets("markdown", {
	s("ili", fmt('<a name="{}">{}</a>', { i(1), i(0) })),
	s("eli", fmt("[{}]({})", { i(1), i(0) })),
	s(
		"!atomic",
		fmt("# {}\n{}\n#atomic\n\n{}\n\n## References", {
			f(function(_, snip)
				local name = snip.env.TM_FILENAME or ""
				return name:gsub("%.md", "")
			end),
			p(os.date, "%Y-%m-%d, %H:%M:%S"),
			i(0),
		})
	),
})
