vim.g.coc_node_path = "/Users/luffy/.node/14.19.1/bin/node"

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "gca", "<Plug>(coc-codeaction)<CR>", opts)
vim.api.nvim_set_keymap("n", "gcs", "<Plug>(coc-codeaction-selected)<CR>", opts)
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-rename)<CR>", opts)
