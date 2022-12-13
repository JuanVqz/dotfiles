-- Useful mappings
-- 'gcc', toggle comment current line
-- 'gbc', toggle comment current block
-- 'gcO', Add comment on the line above
-- 'gco', Add comment on the line below
-- 'gcA', Add comment at the end of line

local ok, comment = pcall(require, "Comment")
if not ok then
  return
end

local config = {
  mappings = {
    extra = true,
  },
}

comment.setup(config)
