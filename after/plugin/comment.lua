local present, comment = pcall(require, 'nvim_comment')
if not present then
    return
end

comment.setup({
    line_mapping = "<leader>cl",
    operator_mapping = "<leader>c",
    comment_chunk_text_object = "ic"
})
