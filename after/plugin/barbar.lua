local present, bufferline = pcall(require, "bufferline")
if not present then
    return
end

bufferline.setup {
    animation = false,
    auto_hide = false,
    closable = true,
}

vim.api.nvim_create_autocmd('BufWinEnter', {
    callback = function(tbl)
        if vim.bo[tbl.buf].filetype == 'NvimTree' then
            require'bufferline.api'.set_offset(31, 'FileTree')
        end
    end
})

vim.api.nvim_create_autocmd({'BufWinLeave', 'BufWipeout'}, {
    callback = function(tbl)
        if vim.bo[tbl.buf].filetype == 'NvimTree' then
            require'bufferline.api'.set_offset(0)
        end
    end
})

vim.keymap.set('n', '<s-h>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<s-l>', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', '<s-j>', '<Cmd>BufferClose<CR>')


