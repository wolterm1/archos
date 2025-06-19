local funcs = require("plugins.utils.helper")

return {

	{
		"mfussenegger/nvim-lint",
		event = { "BufWritePost", "BufReadPost", "InsertLeave" },

		config = function()
			local lint = require("lint")

			-- Linters pro Dateityp konfigurieren HIER DIE LINTER HINZUFUEGEN
			lint.linters_by_ft = {
				markdown = { "markdownlint" },
				cmake = { "cmakelint" },
				["_"] = {}, -- fallback
				["*"] = {}, -- global
			}

			local function run_lint()
				local filetype = vim.bo.filetype
				local names = lint._resolve_linter_by_ft(filetype)
				names = vim.list_extend({}, names or {})

				-- Fallback- und globale Linters korrekt einfügen
				if #names == 0 then
					vim.list_extend(names, lint.linters_by_ft["_"] or {})
				end
				vim.list_extend(names, lint.linters_by_ft["*"] or {})

				local ctx = { filename = vim.api.nvim_buf_get_name(0) }
				ctx.dirname = vim.fn.fnamemodify(ctx.filename, ":h")

				names = vim.tbl_filter(function(name)
					local linter = lint.linters[name]
					return linter and (not linter.condition or linter.condition(ctx))
				end, names)

				if #names > 0 then
					lint.try_lint(names)
				end
			end

			local lint_augroup = vim.api.nvim_create_augroup("nvim-lint", { clear = true })
			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = require("plugins.utils.helper").debounce(100, run_lint),
			})
		end,
	},

	{
		"williamboman/mason.nvim",
		config = true,
	},

	-- automatically install linte_by_ft from conform.nvim
	{
		"rshkarin/mason-nvim-lint",
		dependencies = { "mfussenegger/nvim-lint", "williamboman/mason.nvim" },
		config = true,
	},
}
