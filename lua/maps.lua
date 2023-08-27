local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Declare a global variable to track line wrapping state
_G.wrap_enabled = true

-- Define a global function to toggle line wrapping
function _G.toggle_wrap()
  if wrap_enabled then
    vim.cmd('set nowrap')  -- Disable line wrapping
    wrap_enabled = false   -- Update state to indicate wrapping is off
  else
    vim.cmd('set wrap')    -- Enable line wrapping
    wrap_enabled = true    -- Update state to indicate wrapping is on
  end
end

-- Set up a key mapping to trigger the toggle_wrap function
keymap.set('n', '<C-z>', ':lua toggle_wrap()<CR>', { noremap = true, silent = true })
--
-- New tab
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

