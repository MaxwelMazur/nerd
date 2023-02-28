-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local present, tree = pcall(require, "nvim-tree")
if not present then
  return
end

-- OR setup with some options
tree.setup({
    sort_by = "case_sensitive",
    view = {
        -- Opções de exibição
        width = 30,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
        -- defina o campo devicons para personalizar os ícones exibidos
        devicons = {
            -- defina um ícone personalizado para a extensão .md
            default = "",
            symlink = "",
            git = {
                -- defina ícones personalizados para os diferentes status do git
                unstaged = "✚",
                staged = "✚",
                unmerged = "≠",
                renamed = "≫",
                deleted = "",
                ignored = "◌",
            },
            folder = {
                arrow_open = "",
                arrow_closed = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
            },
            lsp = {
                hint = "",
                info = "",
                warning = "",
                error = "",
            },

        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    }
})

vim.keymap.set("n", "<c-n>", ":NvimTreeToggle<CR>")
vim.opt.laststatus = 3
