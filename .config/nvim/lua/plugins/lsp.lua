return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},

	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "clangd", "cmake" },
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		opts = {
			servers = require("plugins.utils.helper").readInServers("/lua/plugins/lsp"),
		},

		-- setup each server and use capabilites to communicate with different plugins
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				-- passing config.capabilities to blink.cmp merges with the capabilities in your
				-- `opts[server].capabilities, if you've defined it
				--				vim.notify("Starte LSP: " .. server, vim.log.levels.INFO)
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},

	--better lsp for example diagnostic floating win
	--{
	--	"nvimdev/lspsaga.nvim",
	--	dependencies = {
	--		"nvim-treesitter/nvim-treesitter", -- optional
	--		"nvim-tree/nvim-web-devicons", -- optional
	--	},
	--	opts = {
	--		symbol_in_winbar = { enable = false },
	--		show_code_action = true,
	--		show_source = true, -- zeigt die LSP-Quelle im Float an (z. B. "clangd")
	--		show_layout = "float", -- explizit den Float-Modus setzen (optional)
	--		max_width = 0.6,
	--	},
	--	config = function()
	--		vim.diagnostic.config(require("plugins.utils.diagnostics_config"))
	--	end,
	--},
}
