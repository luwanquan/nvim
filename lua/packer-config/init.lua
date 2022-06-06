return require("packer").startup(function()
	-- 包管理器 Package manager. Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Editor 编辑器样式
	use("kyazdani42/nvim-web-devicons") -- 文件图标
	use("EdenEast/nightfox.nvim") -- theme 样式皮肤
	use({ "kyazdani42/nvim-tree.lua", tag = "nightly" }) -- explorer
	use("rcarriga/nvim-notify") -- 提示窗
	use("romgrk/barbar.nvim") -- 状态栏
	use("nvim-lualine/lualine.nvim") -- Tabs标签栏
	use("lewis6991/gitsigns.nvim", {
		opt = true,
		event = { "bufRead", "BufNewFile" },
		requires = { "nvim-lua/plenary.nvim", opt = true },
	})
	-- use("sunjon/shade.nvim") --> dim inactive windows

	-- 代码解析树以及相关插件 treesitter plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("nvim-treesitter/nvim-treesitter-refactor") -- 突出显示定义、跳转定义、定义重命名等
	use("p00f/nvim-ts-rainbow") -- 代码块括号标线
	use("SmiteshP/nvim-gps")
	use({
		"numToStr/Comment.nvim",
		requires = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	})
	-- use("mfussenegger/nvim-ts-hint-textobject")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag", { opt = true, ft = { "html", "xml" } })

	-- 🔭望远镜 telescope plugins
	use("nvim-telescope/telescope-fzf-native.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim", {
		requires = { "nvim-lua/plenary.nvim", opt = true },
	})

	-- LSP 语言服务器
	use("neovim/nvim-lspconfig") -- Colection of configurations for the built-in LSP client
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/nvim-cmp") -- 自动完成 Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- 代码块自动完成 Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- 代码块 Snippets plugin
	use("onsails/lspkind.nvim")
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("jose-elias-alvarez/typescript.nvim")
	-- use("ms-jpq/coq_nvim")
end)
