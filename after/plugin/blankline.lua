local present, blankline = pcall(require, "indent_blankline")
if not present then
  return
end

blankline .setup {
    show_current_context = true,
    show_current_context_start = true,
}

