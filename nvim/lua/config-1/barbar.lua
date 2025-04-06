local map = vim.api.nvim_set_keymap

function GetOptsWithDesc(desc)
  return {
    noremap = true,
    silent = true,
    desc = desc,
  }
end

-- Move to previous/next
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', GetOptsWithDesc("Previous tab"))
map('n', '<Tab>', '<Cmd>BufferNext<CR>', GetOptsWithDesc("Next tab"))
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', GetOptsWithDesc("Move buffer left"))
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', GetOptsWithDesc("Move buffer right"))
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', GetOptsWithDesc("Go to buffer 1"))
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', GetOptsWithDesc("Go to buffer 2"))
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', GetOptsWithDesc("Go to buffer 3"))
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', GetOptsWithDesc("Go to buffer 4"))
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', GetOptsWithDesc("Go to buffer 5"))
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', GetOptsWithDesc("Go to buffer 6"))
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', GetOptsWithDesc("Go to buffer 7"))
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', GetOptsWithDesc("Go to buffer 8"))
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', GetOptsWithDesc("Go to buffer 9"))
map('n', '<A-0>', '<Cmd>BufferLast<CR>', GetOptsWithDesc("Go to last buffer"))
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', GetOptsWithDesc("Pin buffer"))
-- Close buffer
map('n', '<A-x>', '<Cmd>BufferClose<CR>', GetOptsWithDesc("Close buffer"))
map('n', '<A-t>', '<Cmd>BufferRestore<CR>', GetOptsWithDesc("Reopen last buffer"))
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-P>', '<Cmd>BufferPick<CR>', GetOptsWithDesc("Pick buffer"))
-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', GetOptsWithDesc("Order buffers by buffer number"))
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', GetOptsWithDesc("Order buffers by directory"))
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', GetOptsWithDesc("Order buffers by language"))
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', GetOptsWithDesc("Order buffers by window number"))

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
