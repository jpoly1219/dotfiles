return {
  -- themes
  {
    "navarasu/onedark.nvim",
    opts = {
      lazy = true,
      style = "dark",
    },
  },
  -- load themes
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
