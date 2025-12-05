return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Settings to make it look "Peaceful" and "Material"
      vim.g.gruvbox_material_background = "hard" -- Options: 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_better_performance = 1

      -- Enable Transparency (To see your wallpaper like in the screenshot)
      -- Change to 0 if you want a solid dark brown background
      vim.g.gruvbox_material_transparent_background = 1

      -- Apply the colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- Configure LazyVim to load this as the default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

-- Old

-- return {
--  "LazyVim/LazyVim",
--  opts = {
--    colorscheme = "catppuccin-macchiato",
--  },
--}
