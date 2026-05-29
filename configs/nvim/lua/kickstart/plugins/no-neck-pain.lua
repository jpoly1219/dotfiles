vim.pack.add { 'https://github.com/shortcuts/no-neck-pain.nvim' }

require('no-neck-pain').setup {}

vim.keymap.set("n", "<leader>nnp", function()
  require('no-neck-pain').setup { width = math.floor(vim.o.columns / 2) }
  require('no-neck-pain').toggle()
end, { desc = "Toggle No Neck Pain" })
