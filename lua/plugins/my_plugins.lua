return {
  {
    "echasnovski/mini.move",
    lazy = false,
    version = false,
    config = function()
      require("mini.move").setup({
        mappings = {
          left = "<M-h>",
          right = "M-l",
          down = "<M-m>",
          up = "<M-,>",

          line_left = "<M-h>",
          line_right = "<M-l>",
          line_down = "<M-m>",
          line_up = "<M-,>",
        },
      })
    end,
  },
  {
    "echasnovski/mini.comment",
    lazy = false,
    version = false,
    config = function()
      require("mini.comment").setup({
        mappings = {
          comment = "<Leader>a",
          comment_visual = "<Leader>a",
          comment_line = "<Leader>a",
        },
      })
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
    "stevearc/oil.nvim",
    --opts = {},
    -- Optional dependencies
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
  },

  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      notify = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
