return {
  -- 1. Zen Mode Configuration
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 100, -- Your custom width
        options = {
          -- signcolumn = "no",
          -- number = false,
          -- relativenumber = false,
        },
      },
      -- Ensure ZenMode knows to trigger Twilight when it opens
      plugins = {
        twilight = { enabled = true },
      },
    },
  },

  -- 2. Twilight Configuration (This must be a SEPARATE entry)
  {
    "folke/twilight.nvim",
    opts = {
      -- This allows Twilight to work inside code blocks in Markdown/Quarto
      context = 10,
      treesitter = true,
    },
  },
}
