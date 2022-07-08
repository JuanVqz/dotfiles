local ok, comment = pcall(require, "Comment")
if not ok then
  return
end

config = {
  mappings = {
    extended = true,
  },
}

comment.setup(config)
