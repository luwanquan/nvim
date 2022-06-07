local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- map("n", "j", "<Plug>(accelerated_jk_gj)", opts)
-- map("n", "k", "<Plug>(accelerated_jk_gk)", opts)

map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- barbar mappings
-- Move to previous/next
map("n", "<leader>,", ":BufferPrevious<CR>", opts)
map("n", "<leader>.", ":BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<leader><", ":BufferMovePrevious<CR>", opts)
map("n", "<leader>>", " :BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<leader>1", ":BufferGoto 1<CR>", opts)
map("n", "<leader>2", ":BufferGoto 2<CR>", opts)
map("n", "<leader>3", ":BufferGoto 3<CR>", opts)
map("n", "<leader>4", ":BufferGoto 4<CR>", opts)
map("n", "<leader>5", ":BufferGoto 5<CR>", opts)
map("n", "<leader>6", ":BufferGoto 6<CR>", opts)
map("n", "<leader>7", ":BufferGoto 7<CR>", opts)
map("n", "<leader>8", ":BufferGoto 8<CR>", opts)
map("n", "<leader>9", ":BufferGoto 9<CR>", opts)
map("n", "<leader>0", ":BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<leader>p", ":BufferPin<CR>", opts)
-- Close buffer
map("n", "<leader>w", ":BufferClose<CR>", opts)
-- Close all buffer but not current buffer
map("n", "<leader>W", ":BufferCloseAllButCurrent<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseAllButPinned<CR>
--                 :BufferCloseAllButCurrentOrPinned<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", ":BufferOrderByWindowNumber<CR>", opts)

-- Telescope mappings
map("n", "<leader>pp", ":Telescope<CR><Esc>", opts)
map("n", "<leader>f", ":Telescope find_files<CR>", opts)
map("n", "<leader>G", ":Telescope live_grep<CR>", opts)
map("n", "<leader>gs", ":Telescope git_status<CR><Esc>", opts)
map("n", "<leader>gc", ":Telescope git_commits<CR><Esc>", opts)
