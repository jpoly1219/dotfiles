return {
  {
    "bufferline.nvim",
    keys = {
      {
        "<Tab>",
        "<Cmd>BufferLineCycleNext<CR>",
        desc = "Next buffer",
      },
      {
        "<S-Tab>",
        "<Cmd>BufferLineCyclePrev<CR>",
        desc = "Prev buffer",
      },
      {
        "<Leader>x",
        "<Cmd>bd<CR>",
        desc = "Close current buffer",
      },
    },
  },
  {
    "lualine.nvim",
    opts = {
      options = {
        theme = "onedark",
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
}
