if vim.fn.has('clipboard') == 1 then
  vim.opt.clipboard:append { 'unnamedplus' }
end
