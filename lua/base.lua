vim.cmd("autocmd!")

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true -- copy indent from current line when starting a new line
vim.opt.smartindent = true
vim.opt.hlsearch = true -- when there is a previous search pattern, highlight all matches
vim.opt.backup = false -- make back up before overwriting a file
vim.opt.showcmd = true
vim.opt.cmdheight = 1 -- number of lines to use for command-line
vim.opt.laststatus = 2 -- when to show status line on last window
vim.opt.expandtab = true -- replace tabs with spaces
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*'} -- which files not to back up
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- auto indent
vim.opt.si = true -- smart indent
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' } -- set backspace to move over indents, eols and start of insert (whatever that means).
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
