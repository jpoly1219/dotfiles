return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- lua
        "stylua",
        "selene",
        "luacheck",
        -- bash
        "shellcheck",
        "shfmt",
        -- javascript
        "eslint-lsp",
        "prettierd",
        -- typescript
        "typescript-language-server",
        -- html
        "html-lsp",
        "htmlbeautifier",
        -- css
        "css-lsp",
        -- tailwindcss
        "tailwindcss-language-server",
        -- json
        "json-lsp",
        -- "jq-lsp",
        -- react
        -- next
        -- svelte
        "svelte-language-server",
        -- astro
        "astro-language-server",
        -- cpp
        "clangd",
        -- go
        "gopls",
        "gofumpt",
        -- python
        "python-lsp-server",
        -- ocaml
        "ocaml-lsp",
        "ocamlformat",
        -- rust
        "rust-analyzer",
        -- nix
        "rnix-lsp",
        -- scheme
        -- haskell
        "haskell-language-server",
        "haskell-debug-adapter",
        -- clojure
        "clojure-lsp",
        -- "cljfmt",
      })
    end,
  },
  -- language servers not supported by mason
  {
    "reasonml-editor/vim-reason-plus",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        racket_langserver = {},
      },
    },
  },
}
