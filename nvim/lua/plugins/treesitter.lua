return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "clojure",
        "cmake",
        "cpp",
        "css",
        "gitignore",
        "go",
        "graphql",
        "haskell",
        "html",
        "http",
        "javascript",
        "json",
        "lua",
        "nix",
        "ocaml",
        "ocaml_interface",
        "python",
        "racket",
        "rust",
        "scheme",
        "scss",
        "sql",
        "svelte",
        "typescript",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
