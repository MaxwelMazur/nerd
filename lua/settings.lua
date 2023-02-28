local opt = vim.opt

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
opt.colorcolumn = "0"
opt.clipboard = 'unnamedplus'

-- Configurações do terminal
vim.cmd([[set splitright]]) -- Abre o terminal na vertical
vim.cmd([[set splitbelow]]) -- Abre o terminal abaixo
vim.cmd([[set termguicolors]]) -- Habilita cores no terminal
vim.cmd([[set number]]) -- Habilita linhas de número no terminal

-- Define um mapeamento para sair do modo terminal com <C-w>
-- vim.cmd('tnoremap <C-w> <C-\\><C-n>')
vim.cmd('autocmd! TermOpen * startinsert')
