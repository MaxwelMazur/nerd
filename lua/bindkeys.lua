vim.g.mapleader = " "
keymap = vim.keymap.set

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/cgi<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
keymap("n", "<leader>q", ":q!<CR>")

keymap("n", "<C-d>", "<cmd>t.<CR>")
-- keymap("n", "<leader>d", "<cmd>t.<CR>")
keymap("n", "<leader>wh", "<cmd>split<CR>")
keymap("n", "<leader>wv", "<cmd>vsplit<CR>")

keymap("n", "<C-h>", ":vertical resize -3<CR>")
keymap("n", "<C-l>", ":vertical resize +3<CR>")
keymap("n", "<C-j>", ":resize +3<CR>")
keymap("n", "<C-k>", ":resize -3<CR>")

keymap('n', '<leader>cw', [[:let @/='\<'.expand('<cword>').'\>'<cr>"_ciw]], { noremap = true })

-- Auto-indent and save on Ctrl+s
keymap('n', '<C-s>', ':w<CR>gg=G<C-o>')
keymap('n', '<leader>s', ':w<CR>gg=G<C-o>')
keymap("n", "<C-a>", "ggVG")
keymap("n", "<leader>a", "ggVG")

keymap('n', '<C-j>', '<cmd>split term://zsh | resize 18 <CR>', { noremap = true, silent = true, nowait = true })

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<C-w>h', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-w>j', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-w>k', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-w>l', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
