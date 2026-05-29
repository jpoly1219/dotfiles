vim.pack.add { 'https://github.com/akinsho/bufferline.nvim' }
require('bufferline').setup {}
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer', remap = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer', remap = true })
vim.keymap.set('n', '<leader>x', '<Cmd>bd<CR>', { desc = 'Delete buffer', remap = true })
