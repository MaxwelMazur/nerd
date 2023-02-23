local present, nvim_tree = pcall(require, "nvim-tree")
if not present then
  return
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
        width = 30,
        hide_root_folder = false,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false, -- mostra os arquivos ocultos
    },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>oe", "<Cmd>NvimTreeToggle<CR>")
