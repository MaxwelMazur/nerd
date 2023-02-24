vim.g.mapleader = " "
keymap = vim.keymap.set

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("i", "<C-c>", "<Esc>")

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
keymap('n', '<C-s>', ':w<CR>')
keymap('n', '<leader>s', ':w<CR>')

keymap("n", "<C-a>", "ggVG")
keymap("n", "<leader>a", "ggVG")

function formatCode()
    local current_atual = vim.api.nvim_win_get_cursor(0)
    vim.api.nvim_feedkeys('gg=G<c-o>', 'n', true)
    vim.api.nvim_win_set_cursor(0, current_atual)
    print(current_atual)
end

vim.api.nvim_command('autocmd BufWritePost * lua formatCode()')

