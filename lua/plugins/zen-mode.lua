return {
  -- 1. Zen Mode Configuration
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 100, -- Your custom width
        options = {
          -- CRITICAL FIX 1: Force centering inside the Zen window
          scrolloff = 999,

          -- Optional: I recommend uncommenting these for true Zen Mode
          signcolumn = "no",
          number = true,
          relativenumber = false,
        },
      },
      -- Ensure ZenMode knows to trigger Twilight when it opens
      plugins = {
        twilight = { enabled = true },
      },

      -- NEW: Hide warnings/errors when entering ZenMode
      on_open = function(_)
        vim.diagnostic.enable(false, { bufnr = 0 })
      end,

      -- NEW: Restore warnings/errors when exiting ZenMode
      on_close = function(_)
        vim.diagnostic.enable(true, { bufnr = 0 })
      end,
    },
  },

  -- 2. Twilight Configuration
  {
    "folke/twilight.nvim",
    opts = {
      -- CRITICAL FIX 2: Lower this number!
      -- 1 = Current line + 1 above/below stays bright.
      -- 10 was keeping almost the whole screen bright.
      context = 1,

      treesitter = true,
    },
  },
}
