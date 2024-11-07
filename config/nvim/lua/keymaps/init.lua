require("keymaps.netrw")

vim.keymap.set("n", "<C-u>", "zz<C-u>")
vim.keymap.set("n", "<C-d>", "zz<C-d>")
vim.keymap.set("n", "<C-c>", "<cmd>noh<cr>")
vim.keymap.set("v", "p", "P")
vim.keymap.set("v", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc><cmd>noh<cr>")
vim.keymap.set("n", "<C-n>", "$F{a<cr><esc>O")
