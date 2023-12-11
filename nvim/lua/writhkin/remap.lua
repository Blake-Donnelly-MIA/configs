vim.g.mapleader = " "
vim.g.copilot_filetypes = {
  ["*"] = true,
}
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)

vim.keymap.set("n", '<leader>h', ":wincmd h<CR>")
vim.keymap.set("n", '<leader>j', ":wincmd j<CR>")
vim.keymap.set("n", '<leader>k', ":wincmd k<CR>")
vim.keymap.set("n", '<leader>l', ":wincmd l<CR>")

vim.keymap.set("n", '<leader>q', ":wincmd q<CR>")

vim.keymap.set("n", "<leader>w" ,":wa <cr>")
vim.keymap.set("n", "<leader>z" ,":wqa! <cr>")

vim.keymap.set("n", "<leader>v" , ":wincmd v<CR>")
vim.keymap.set("n", "<leader>b" , ":split <CR>")

vim.keymap.set("v", "<leader>x", ":!pbcopy<CR>")
vim.keymap.set("v", "<leader>c", ":w !pbcopy<CR><CR>")

vim.keymap.set("n", "<leader>1", ":vertical resize +5<CR>")
vim.keymap.set("n", "<leader>2", ":vertical resize -5<CR>")

--inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
--inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
