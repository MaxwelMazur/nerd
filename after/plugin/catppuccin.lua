local present, catppuccin = pcall(require, 'catppuccin')
if not present then
  return
end

catppuccin.setup({
    background = {
        dark = "mocha",
    },
    flavour = "mocha",
    transparent_background = false
})

vim.cmd.colorscheme("catppuccin")
