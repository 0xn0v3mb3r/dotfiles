local mapKey = require("utils.keyMapper").mapKey

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

		mapKey("<A-,>", "<Cmd>BufferPrevious<CR>")
		mapKey("<A-.>", "<Cmd>BufferNext<CR>")

		-- Re-order to previous/next
		mapKey("<A-<>", "<Cmd>BufferMovePrevious<CR>")
		mapKey("<A->>", "<Cmd>BufferMoveNext<CR>")

		-- Goto buffer in position...
		mapKey("<A-1>", "<Cmd>BufferGoto 1<CR>")
		mapKey("<A-2>", "<Cmd>BufferGoto 2<CR>")
		mapKey("<A-3>", "<Cmd>BufferGoto 3<CR>")
		mapKey("<A-4>", "<Cmd>BufferGoto 4<CR>")
		mapKey("<A-5>", "<Cmd>BufferGoto 5<CR>")
		mapKey("<A-6>", "<Cmd>BufferGoto 6<CR>")
		mapKey("<A-7>", "<Cmd>BufferGoto 7<CR>")
		mapKey("<A-8>", "<Cmd>BufferGoto 8<CR>")
		mapKey("<A-9>", "<Cmd>BufferGoto 9<CR>")
		mapKey("<A-0>", "<Cmd>BufferLast<CR>")

		-- Pin/unpin buffer
		mapKey("<A-p>", "<Cmd>BufferPin<CR>")

		-- Goto pinned/unpinned buffer
		--                 :BufferGotoPinned
		--                 :BufferGotoUnpinned

		-- Close buffer
		mapKey("<A-c>", "<Cmd>BufferClose<CR>")

		-- Wipeout buffer
		--                 :BufferWipeout

		-- Close commands
		--                 :BufferCloseAllButCurrent
		--                 :BufferCloseAllButPinned
		--                 :BufferCloseAllButCurrentOrPinned
		--                 :BufferCloseBuffersLeft
		--                 :BufferCloseBuffersRight

		-- Magic buffer-picking mode
		mapKey("<C-p>", "<Cmd>BufferPick<CR>")
		mapKey("<C-s-p>", "<Cmd>BufferPickDelete<CR>")

		-- Sort automatically by...
		mapKey("<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
		mapKey("<Space>bn", "<Cmd>BufferOrderByName<CR>")
		mapKey("<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
		mapKey("<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
		mapKey("<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")
	end,
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
