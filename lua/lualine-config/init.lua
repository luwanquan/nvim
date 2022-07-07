local gps = require("nvim-gps")

local function gps_content()
	if gps.is_available() then
		return gps.get_location()
	else
		return ""
	end
end

local mini_sections = {
	lualine_a = {},
	lualine_b = {},
	lualine_c = {},
	lualine_x = {},
	lualine_y = {},
	lualine_z = { "location" },
}
local simple_sections = {
	lualine_a = { "mode" },
	lualine_b = { "filetype" },
	lualine_c = {},
	lualine_x = {},
	lualine_y = {},
	lualine_z = { "location" },
}
local minimap = {
	sections = mini_sections,
	filetypes = { "minimap" },
}
local aerial = {
	sections = mini_sections,
	filetypes = { "aerial" },
}
local dapui_scopes = {
	sections = simple_sections,
	filetypes = { "dapui_scopes" },
}

local dapui_breakpoints = {
	sections = simple_sections,
	filetypes = { "dapui_breakpoints" },
}

local dapui_stacks = {
	sections = simple_sections,
	filetypes = { "dapui_stacks" },
}

local dapui_watches = {
	sections = simple_sections,
	filetypes = { "dapui_watches" },
}

require("lualine").setup({
	options = {
		icons_enabled = true,
		-- theme = "catppuccin",
		disabled_filetypes = {},
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = " " },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { { "branch" }, { "diff" } },
		lualine_c = {
			{ "lsp_progress" },
			{ gps_content, cond = gps.is_available },
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
			-- {
			-- 	-- Lsp server name .
			-- 	function()
			-- 		local msg = "No Active Lsp"
			-- 		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
			-- 		local clients = vim.lsp.get_active_clients()
			-- 		if next(clients) == nil then
			-- 			return msg
			-- 		end
			-- 		for _, client in ipairs(clients) do
			-- 			local filetypes = client.config.filetypes
			-- 			-- print(client.name, filetypes[0])
			-- 			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
			-- 				return client.name
			-- 			end
			-- 		end
			-- 		return msg
			-- 	end,
			-- 	-- icon = "  LSP:",
			-- 	color = { fg = "#ffffff" },
			-- },
			--
			-- {
			-- 	function()
			-- 		local b = vim.api.nvim_get_current_buf()
			-- 		if next(vim.treesitter.highlighter.active[b]) then
			-- 			return ""
			-- 		end
			-- 		return ""
			-- 	end,
			-- 	-- color = { fg = colors.green },
			-- 	-- cond = conditions.hide_in_width,
			-- },
			-- {
			-- 	function(msg)
			-- 		msg = msg or "LS Inactive"
			-- 		local buf_clients = vim.lsp.buf_get_clients()
			-- 		if next(buf_clients) == nil then
			-- 			-- TODO: clean up this if statement
			-- 			if type(msg) == "boolean" or #msg == 0 then
			-- 				return "LS Inactive"
			-- 			end
			-- 			return msg
			-- 		end
			-- 		local buf_ft = vim.bo.filetype
			-- 		local buf_client_names = {}
			--
			-- 		-- add client
			-- 		for _, client in pairs(buf_clients) do
			-- 			if client.name ~= "null-ls" then
			-- 				table.insert(buf_client_names, client.name)
			-- 			end
			-- 		end
			--
			-- 		-- add formatter
			-- 		local formatters = require("lvim.lsp.null-ls.formatters")
			-- 		local supported_formatters = formatters.list_registered(buf_ft)
			-- 		vim.list_extend(buf_client_names, supported_formatters)
			--
			-- 		-- add linter
			-- 		local linters = require("lvim.lsp.null-ls.linters")
			-- 		local supported_linters = linters.list_registered(buf_ft)
			-- 		vim.list_extend(buf_client_names, supported_linters)
			--
			-- 		return "[" .. table.concat(buf_client_names, ", ") .. "]"
			-- 	end,
			-- 	color = { gui = "bold" },
			-- 	-- cond = conditions.hide_in_width,
			-- },
		},
		lualine_y = {
			{
				"filetype",
				"encoding",
			},
			{
				"fileformat",
				icons_enabled = true,
				symbols = {
					unix = "LF",
					dos = "CRLF",
					mac = "CR",
				},
			},
		},
		lualine_z = { "progress", "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {
		"quickfix",
		"nvim-tree",
		"toggleterm",
		"fugitive",
		minimap,
		aerial,
		dapui_scopes,
		dapui_breakpoints,
		dapui_stacks,
		dapui_watches,
	},
})
