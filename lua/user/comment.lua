local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  print("Error loading Comment.nvim (config)")
end

comment.setup()
