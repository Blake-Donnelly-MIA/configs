local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("", "<leader>gg", mark.add_file)
vim.keymap.set("n", "<leader>gd", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>g1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>g2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>g3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>g4", function() ui.nav_file(4) end)
