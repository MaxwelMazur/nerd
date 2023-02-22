
keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>pv", vim.cmd.Ex)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("i", "<C-c>", "<Esc>")

keymap("n", "Q", "<nop>")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/cgi<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap("n", "<C-d>", "<cmd>t.<CR>")
keymap("n", "<leader>h", "<cmd>split<CR>")
keymap("n", "<leader>v", "<cmd>vsplit<CR>")

keymap("n", "<C-h>", ":vertical resize -3<CR>")
keymap("n", "<C-l>", ":vertical resize +3<CR>")
keymap("n", "<C-j>", ":resize +3<CR>")
keymap("n", "<C-k>", ":resize -3<CR>")

keymap("n", "<q>", ":q<CR>")
keymap("n", "<C-s>", ":w<CR>")
keymap("n", "<C-s>", "<Esc>:w<CR>")
keymap("n", "<C-a>", "ggVG")

keymap('n', '<leader>cw', [[:let @/='\<'.expand('<cword>').'\>'<cr>"_ciw]], { noremap = true })
