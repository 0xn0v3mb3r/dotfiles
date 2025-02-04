local mapKey = require("utils.keyMapper").mapKey

-- pane navigation
mapKey("<C-h>", "<C-w>h") -- Left
mapKey("<C-j>", "<C-w>j") -- Down
mapKey("<C-k>", "<C-w>k") -- Up
mapKey("<C-l>", "<C-w>l") -- Right

-- clear search highlight
mapKey("<leader>h", ":nohlsearch<CR>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

-- jump to error/warning
mapKey("<leader>ne", function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end)
mapKey("<leader>pe", function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
mapKey("<leader>nw", function()
	vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
end)
mapKey("<leader>pw", function()
	vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
end)
