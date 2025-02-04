local mapKey = require("utils.keyMapper").mapKey

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = true, -- Ensure Neo-tree follows the active file
				scan_mode = "deep", -- Scan everything (not just shallow scan)
				filtered_items = {
					visible = true, -- Show all files, including hidden ones
					hide_dotfiles = false, -- Do not hide dotfiles
					hide_gitignored = false, -- Do not hide gitignored files
					hide_by_name = {}, -- No hidden directories by name
					hide_by_pattern = {}, -- No hidden directories by pattern
					always_show = { "*" }, -- Always show all files and directories
					never_show = {}, -- Do not exclude anything
					never_show_by_pattern = {}, -- No exclusions by pattern
				},
			},
		})
		mapKey("<leader>e", ":Neotree toggle<cr>")
	end,
}
