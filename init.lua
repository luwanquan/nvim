vim.cmd("autocmd InsertLeave,FocusGained,WinEnter * :silent !/usr/local/bin/im-select com.apple.keylayout.ABC")
-- vim.cmd("autocmd FocusGained * :silent !/usr/local/bin/im-select com.apple.keylayout.ABC")
-- vim.cmd("autocmd BufReadPre * :silent !/usr/local/bin/im-select com.apple.keylayout.ABC")
-- vim.cmd("autocmd WinEnter * :silent !/usr/local/bin/im-select com.apple.keylayout.ABC")

require("settings")
require("mappings")

if not vim.g.vscode then
	print(vim.fn.getcwd())
	require("packer-config")
require("treesitter-config")
end

require("lsp-config.language-servers")
