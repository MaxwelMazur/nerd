local present, catppuccin = pcall(require, 'catppuccin')
if not present then
  return
end

catppuccin.setup({
    background = {
        dark = "frappe",
    },
    flavour = "frappe",
    transparent_background = false
})
vim.cmd.colorscheme("catppuccin")


-- local present, onedark = pcall(require, "onedark")
-- if not present then
--     return
-- end

-- require('onedark').setup {
    --     style = 'dark'
    -- }
    -- require('onedark').load()
    -- vim.cmd.colorscheme("onedark")
