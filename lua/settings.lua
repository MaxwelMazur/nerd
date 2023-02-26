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

-- Define a função que retorna o ícone correspondente ao tipo de arquivo
local function get_icon()
    local present, devicons = pcall(require, "nvim-web-devicons")
    if not present then
        return " " .. " "
    end
    local icon, _ = devicons.get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'))
    return icon .. ' '
end

-- Define a função que retorna a porcentagem do arquivo já percorrida
local function get_percent()
    local current_line = vim.fn.line('.')
    local total_lines = vim.fn.line('$')
    return '(' .. current_line .. '/' .. total_lines .. ') '
end


-- Define a função que retorna o nome da branch atual e o estado do repositório Git
function get_git_status_branch()
    -- Obtém o nome da branch atual
    local branch = vim.fn.trim(vim.fn.system('git rev-parse --abbrev-ref HEAD 2>/dev/null'))

    return ' ' .. branch .. ' '
end


local function get_git_status()
    local added, modified, removed = 0, 0, 0
    local output = vim.fn.systemlist('git status --porcelain')
    for _, line in ipairs(output) do
        if vim.startswith(line, '??') then
            added = added + 1
        elseif vim.startswith(line, 'A ') or vim.startswith(line, 'M ') or vim.startswith(line, 'R ') then
            modified = modified + 1
        elseif vim.startswith(line, ' D') or vim.startswith(line, 'D ') then
            removed = removed + 1
        end
    end
    return added, modified, removed
end

local function get_git_symbols()
    local added, modified, removed = get_git_status()
    local symbols = { added = ' ', modified = 'ﭥ ', removed = "ﮖ " }
    local icon = ''
    if added > 0 then
        icon = icon .. symbols.added .. added .. ' '
    end
    if modified > 0 then
        icon = icon .. symbols.modified .. modified .. ' '
    end
    if removed > 0 then
        icon = icon .. symbols.removed .. removed .. ' '
    end
    return icon
end

local colors = {
    bg       = '#292C3C',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#98be65',
    orange   = '#FF8800',
    violet   = '#a9a1e1',
    magenta  = '#c678dd',
    blue     = '#51afef',
    red      = '#ec5f67',
}

-- Configuração da barra de status
vim.o.statusline = '▊ 󰌌  '
vim.o.statusline = vim.o.statusline .. get_icon()
vim.o.statusline = vim.o.statusline .. '%#StatusLine#'
vim.o.statusline = vim.o.statusline .. '%t '
vim.o.statusline = vim.o.statusline .. get_git_status_branch()
vim.o.statusline = vim.o.statusline .. get_git_symbols()
vim.o.statusline = vim.o.statusline .. '%#StatusLine#'
vim.o.statusline = vim.o.statusline .. '%=%#StatusLineNC#'
vim.o.statusline = vim.o.statusline .. '%y '
vim.o.statusline = vim.o.statusline .. get_percent()
vim.o.statusline = vim.o.statusline .. '%-8.(%{&fenc?&fenc:&enc} %c:%l%) '
vim.o.statusline = vim.o.statusline .. '%m '
vim.o.statusline = vim.o.statusline .. '%#TabLine#'

-- Habilita a barra de status
vim.o.laststatus = 3
