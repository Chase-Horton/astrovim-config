return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    event = "VeryLazy",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    -- loads on open file, can use VeryLazy to trigger on start
    event = "User AstroFile",
    keys = {
      { "<leader>T", "<cmd>:TodoTrouble cwd=~/Programs<cr>", desc = "open Todos in Telescope" },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
      "BufReadPre home/chase/Documents/Obsidian Vault/**.md",
      "BufNewFile home/chase/Documents/Obsidian Vault/**.md",
    },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      dir = "~/Documents/Obsidian Vault", -- no need to call 'vim.fn.expand' here
    },
  },
}
