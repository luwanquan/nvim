local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	-- Prettier is an opinionated code formatter. It enforces a consistent style by parsing your code and re-printing it with its own rules that take the maximum line length into account, wrapping code when necessary.
	formatting.prettier,

	-- Injects actions to fix ESLint issues or ignore broken rules.
	formatting.eslint,

	-- A tool that automatically formats Python code to conform to the PEP 8 style guide.
	-- formatting.autopep8,

	-- An opinionated code formatter for Lua.
	formatting.stylua,

	-- Tool to format C/C++/… code according to a set of rules and heuristics.
	-- formatting.clang_format,
}

null_ls.setup({
	-- debug = true,
	sources = sources,

	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
		end
	end,
})
