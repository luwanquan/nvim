return require("packer").startup(function()
	-- 包管理器 Package manager. Packer can manage itself
	use("wbthomason/packer.nvim")

	-- 辅助工具
	use({
		"rainbowhxch/accelerated-jk.nvim",
		config = function()
			vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
			vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})
		end,
	}) -- 加速 j 和 k

	-- Editor 编辑器样式
	use("kyazdani42/nvim-web-devicons") -- 文件图标
	use({
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
			vim.cmd("colorscheme nordfox")
		end,
	}) -- theme 样式皮肤
	use({
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("nvim-tree-config")
		end,
	}) -- explorer
	-- use("rcarriga/nvim-notify") -- 提示窗
	use({
		"romgrk/barbar.nvim",
		config = function()
			-- Set barbar's options
			vim.g.bufferline = {
				-- Enable/disable animations
				animation = true,
				-- Enable/disable close button
				closable = true,
				-- Configure icons on the bufferline.
				icon_separator_active = "",
				icon_separator_inactive = "",
			}
		end,
	}) -- 状态栏
	use({
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine-config")
		end,
	}) -- Tabs标签栏
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim", opt = true },
		opt = true,
		event = { "bufRead", "BufNewFile" },
		config = function()
			require("gitsigns-config")
		end,
	})
	use({
		"glepnir/dashboard-nvim",
		config = function()
			require("dashboard-config")
		end,
	})
	use({ "iamcco/markdown-preview.nvim", opt = true, ft = "markdown", run = "cd app && yarn install" })

	-- 代码解析树以及相关插件 treesitter plugins
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("nvim-treesitter/nvim-treesitter-refactor") -- 突出显示定义、跳转定义、定义重命名等
	use("SmiteshP/nvim-gps")
	use("p00f/nvim-ts-rainbow") -- 代码块括号标线
	use({
		"numToStr/Comment.nvim",
		requires = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = function()
			require("comment-config")
		end,
	})
	-- use("mfussenegger/nvim-ts-hint-textobject")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs-config")
		end,
	})
	use({
		"windwp/nvim-ts-autotag",
		opt = true,
		ft = { "html", "xml" },
		config = function()
			require("nvim-ts-autotag-config")
		end,
	})

	-- 🔭望远镜 telescope plugins
	use("nvim-telescope/telescope-fzf-native.nvim")
	use("nvim-lua/plenary.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim", opt = true },
		config = function()
			require("telescope").setup({
				defaults = { file_ignore_patterns = { "node_modules" } },
			})
		end,
	})

	-- LSP 语言服务器
	use("neovim/nvim-lspconfig") -- Colection of configurations for the built-in LSP client
	use("williamboman/nvim-lsp-installer")
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "onsails/lspkind-nvim" }, -- 为补全添加类似 vscode 的图标
			{ "hrsh7th/vim-vsnip" }, -- vsnip 引擎，用于获得代码片段支持
			{ "hrsh7th/cmp-vsnip" }, -- 适用于 vsnip 的代码片段源
			{ "hrsh7th/cmp-nvim-lsp" }, -- 替换内置 omnifunc，获得更多补全
			{ "hrsh7th/cmp-path" }, -- 路径补全
			{ "hrsh7th/cmp-buffer" }, -- 缓冲区补全
			{ "hrsh7th/cmp-cmdline" }, -- 命令补全
			{ "f3fora/cmp-spell" }, -- 拼写建议
			{ "rafamadriz/friendly-snippets" }, -- 提供多种语言的代码片段
			{ "lukas-reineke/cmp-under-comparator" }, -- 让补全结果的排序更加智能
			{ "tzachar/cmp-tabnine", run = "./install.sh" }, -- tabnine 源,提供基于 AI 的智能补全
		},
		config = function()
			require("lsp-config.nvim-cmp")
		end,
	}) -- 自动完成 Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- lua 代码块自动完成 Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- lua 代码块 Snippets plugin
	use({
		"tami5/lspsaga.nvim",
		config = function()
			require("lsp-config.lspsaga")
		end,
	})
	use("onsails/lspkind.nvim")
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("lsp-config.null-ls")
		end,
	}) --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("jose-elias-alvarez/typescript.nvim")

	-- coc completion
	-- use({
	-- 	"neoclide/coc.nvim",
	-- 	branch = "release",
	-- 	config = function()
	-- 		vim.api.nvim_exec([[source ~/.config/nvim/lua/coc-nvim-config/coc_config.vim]], false)
	-- 		-- require("coc-nvim-config")
	-- 	end,
	-- 	rum = "yarn && yarn build",
	-- })
	-- use({ "github/copilot.vim", opt = true, cmd = "Copilot" })
end)
