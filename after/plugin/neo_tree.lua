local present, neo_tree = pcall(require, "neo-tree")
if not present then
  return
end

neo_tree.setup({
    source_selector = {
        winbar = false,
        statusline = false,
    }
})

vim.keymap.set("n", "<leader>pv", "<Cmd>Neotree toggle left<CR>")
