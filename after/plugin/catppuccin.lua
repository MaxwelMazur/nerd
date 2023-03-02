local present, catppuccin = pcall(require, 'catppuccin')
if not present then
    return
end

catppuccin.setup({
    background = {
        dark = "frappe",
    },
    flavour = "frappe",
    transparent_background = true
})

vim.cmd.colorscheme("catppuccin")
