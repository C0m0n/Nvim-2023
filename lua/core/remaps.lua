--Explorer
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

--File explorer
vim.keymap.set('n', '<leader>fe', ':Ex<CR>', {desc = 'File Explorer'})

--Move blocks of code around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Jump half a page with the cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--serch terms stay in the middle 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--neotree
vim.keymap.set('n', '<leader>ft', ':Neotree<CR>', {desc = 'Neotree'})

--Git 
vim.keymap.set("n", '<leader>gs', ':Neotree git_status<CR>', {desc = 'Git Window'})
vim.keymap.set("n", '<leader>gl', ':LazyGit<CR>', {desc = 'Git Lazy'})
