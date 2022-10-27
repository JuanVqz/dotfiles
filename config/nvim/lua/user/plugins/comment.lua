local ok, comment = pcall(require, "Comment")
if not ok then
  return
end

config = {
  mappings = {
    extra = true,
  },
}

comment.setup(config)
