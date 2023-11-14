local status, comment = pcall(require,'nvim_comment')
if(not status) then return end

comment.setup({
  comment_empty = false,
  comment_empty_whitespace = false
})
