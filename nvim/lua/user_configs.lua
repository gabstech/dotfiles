vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set nu")
vim.cmd("set relativenumber")


--Move selected lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

--Move lines in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR<==<ENTER>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR<==<ENTER>==")

--move Lines in insert mode
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")



vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
