--Term colors
vim.opt.termguicolors = true

--Auto indent
vim.opt.autoindent = true

--Tab width
vim.opt.shiftwidth = 4

--undo stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false 
vim.opt.incsearch = true

vim.opt.scrolloff = 4

--Clipboard
vim.opt.clipboard = "unnamedplus"

--UI stuff
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.linebreak = true


