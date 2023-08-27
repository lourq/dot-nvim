local status, dapui = pcall(require , 'dapui')
if(not status) then return end

dapui.setup({
  icons = { expanded = '▾', collapsed = '▸' },
  mappings = {
    expand = { '<CR>', '<2-LeftMouse>' },
    open = 'o',
    remove = 'd',
    edit = 'e',
  },
  sidebar = {
    elements = {
      { id = 'scopes', size = 0.25 },
      { id = 'stacks', size = 0.25 },
      { id = 'watches', size = 0.25 },
    },
    size = 40,
    position = 'left',
  },
  tray = {
    elements = { 'repl' },
    size = 10,
    position = 'bottom',
  },
})

-- dapui.float_element("scopes", {
--   height = 0.3,  -- Specify the height of the floating window
--   width = 0.4,   -- Specify the width of the floating window
--   relative = "editor",  -- Specify the relative position (e.g., "editor", "cursor")
--   row = 0,       -- Specify the row position if using "cursor" for relative
--   col = 0,       -- Specify the column position if using "cursor" for relative
--   style = {
--     border = "single",  -- Specify the border style (e.g., "single", "double")
--     highlight = "Normal",  -- Specify the highlight group for the window
--   },
-- })
vim.keymap.set('n', '<C-n>', '<cmd>lua require("dapui").open()<cr>',{noremap = true , silent = true})
vim.keymap.set('n', '<C-d>', '<cmd>lua require("dapui").close()<cr>',{noremap = true , silent = true})
