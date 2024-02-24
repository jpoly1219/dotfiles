return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      {
        ";f",
        function()
          require("telescope.builtin").find_files({ no_ignore = false, hidden = true })
        end,
        desc = "Lists files in your current working directory, respects .gitignore",
      },
      {
        ";r",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Lists files in your current working directory, respects .gitignore",
      },
      {
        ";b",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Lists open buffers",
      },
      {
        ";h",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
      },
      {
        ";d",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Lists Diagnostics for all open buffers or a specific buffer",
      },
      {
        ";t",
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "Lists Function names, variables, from Treesitter",
      },
      {
        ";sf",
        function()
          local telescope = require("telescope")

          local function telescope_buffer_dir()
            return vim.fn.expand("%:p:h")
          end

          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "Open File Browser with the path of the current buffer",
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local fb_actions = require("telescope").extensions.file_browser.actions

      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          -- Disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            -- Custom normal mode mappings
            ["n"] = {
              ["n"] = fb_actions.create,
              ["r"] = fb_actions.rename,
              ["d"] = fb_actions.remove,
              ["m"] = fb_actions.move,
              ["c"] = fb_actions.copy,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
              ["<C-u>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_previous(prompt_bufnr)
                end
              end,
              ["<C-d>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_next(prompt_bufnr)
                end
              end,
              ["<PageUp>"] = actions.preview_scrolling_up,
              ["<PageDown>"] = actions.preview_scrolling_down,
            },
          },
        },
      }
      telescope.setup(opts)
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
    end,
  },
  {
    "neo-tree.nvim",
    enabled = true,
  },
}
