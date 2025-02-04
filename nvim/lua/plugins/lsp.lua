local keyMapper = require("utils.keyMapper").mapKey

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "clangd", "jdtls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Lua
			lspconfig.lua_ls.setup({})

			-- Python
			lspconfig.pyright.setup({
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "strict",
						},
					},
				},
			})

			-- Rust
			lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						cargo = { allFeatures = true },
						procMacro = { enable = true },
					},
				},
			})

			-- C / C++
			lspconfig.clangd.setup({
				cmd = { "clangd", "--background-index" },
				filetypes = { "c", "cpp", "objc", "objcpp" },
			})

			-- Java
			lspconfig.jdtls.setup({})

			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("gd", function()
				require("telescope.builtin").lsp_definitions()
			end)
			keyMapper("gD", function()
				require("telescope.builtin").lsp_type_definitions()
			end)
			keyMapper("gi", function()
				require("telescope.builtin").lsp_implementations()
			end)
			keyMapper("gr", function()
				require("telescope.builtin").lsp_references()
			end)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}
