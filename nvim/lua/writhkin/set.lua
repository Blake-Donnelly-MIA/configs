vim.laststatus= 2

vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
vim.opt.foldenable = true

vim.o.background = "dark"
vim.opt.statusline='%F'
vim.opt.title = true
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff=8
vim.opt.nu = true
vim.opt.shiftwidth=2
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.guicursor= ""
vim.opt.undodir= os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.wildmenu = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


vim.opt.path:append '**'

vim.opt.wildignore:append '**/coverage/*'
vim.opt.wildignore:append '*_build/*'
vim.opt.wildignore:append '**/node_modules/*'
vim.opt.wildignore:append '**/.git/*'
