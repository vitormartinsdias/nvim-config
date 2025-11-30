return {
  -- Zen-mode
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  -- 2. Twilight (Dims inactive text)
  {
    "folke/twilight.nvim",
    opts = {
      -- This allows Twilight to work inside code blocks in Markdown/Quarto
      context = 10,
      treesitter = true,
    },
  },
}
