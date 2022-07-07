vim.g.coc_node_path = "/Users/luffy/.node/14.19.1/bin/node"
vim.g.coc_disable_transparent_cursor = 1

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "<leader>ca", "<Plug>(coc-codeaction)", opts)
-- vim.api.nvim_set_keymap("n", "gca", "<Plug>(coc-codeaction)<CR>", opts)
-- vim.api.nvim_set_keymap("n", "gcs", "<Plug>(coc-codeaction-selected)<CR>", opts)
-- vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-rename)", opts)
