local map = require("utils.keyMapper").mapKey

return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require("barbar").setup()

		map("<A-,>", "<Cmd>BufferPrevious<CR>")
		map("<A-.>", "<Cmd>BufferNext<CR>")

		-- Re-order to previous/next
		map("<A-<>", "<Cmd>BufferMovePrevious<CR>")
		map("<A->>", "<Cmd>BufferMoveNext<CR>")

		-- Goto buffer in position...
		map("<A-1>", "<Cmd>BufferGoto 1<CR>")
		map("<A-2>", "<Cmd>BufferGoto 2<CR>")
		map("<A-3>", "<Cmd>BufferGoto 3<CR>")
		map("<A-4>", "<Cmd>BufferGoto 4<CR>")
		map("<A-5>", "<Cmd>BufferGoto 5<CR>")
		map("<A-6>", "<Cmd>BufferGoto 6<CR>")
		map("<A-7>", "<Cmd>BufferGoto 7<CR>")
		map("<A-8>", "<Cmd>BufferGoto 8<CR>")
		map("<A-9>", "<Cmd>BufferGoto 9<CR>")
		map("<A-0>", "<Cmd>BufferLast<CR>")

		-- Pin/unpin buffer
		map("<A-p>", "<Cmd>BufferPin<CR>")

		-- Goto pinned/unpinned buffer
		--                 :BufferGotoPinned
		--                 :BufferGotoUnpinned

		-- Close buffer
		map("<A-c>", "<Cmd>BufferClose<CR>")

		-- Wipeout buffer
		--                 :BufferWipeout

		-- Close commands
		--                 :BufferCloseAllButCurrent
		--                 :BufferCloseAllButPinned
		--                 :BufferCloseAllButCurrentOrPinned
		--                 :BufferCloseBuffersLeft
		--                 :BufferCloseBuffersRight

		-- Magic buffer-picking mode
		map("<C-p>", "<Cmd>BufferPick<CR>")
		map("<C-s-p>", "<Cmd>BufferPickDelete<CR>")

		-- Sort automatically by...
		map("<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
		map("<Space>bn", "<Cmd>BufferOrderByName<CR>")
		map("<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
		map("<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
		map("<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")
	end,
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
