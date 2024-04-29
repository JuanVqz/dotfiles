-- Useful mappings for Comment.nvim
-- 'gcc', toggle comment current line
-- 'gbc', toggle comment current block
-- 'gcO', Add comment on the line above
-- 'gco', Add comment on the line below
-- 'gcA', Add comment at the end of line

return {
  "numToStr/Comment.nvim",
  opts = {
    line_mapping = "gcc",
    operator_mapping = "gc",
    motion_mapping = "gc",
    hook = function()
      require("ts_context_commentstring.internal").update_commentstring()
    end,
  }
}
