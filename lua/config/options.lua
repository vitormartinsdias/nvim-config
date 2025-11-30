-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 1. WRAPPING SETTINGS
vim.opt.wrap = true -- Turn on line wrapping
vim.opt.linebreak = true -- Wrap at whole words (don't cut words in half)
vim.opt.breakindent = true -- Visually indent wrapped lines to match the paragraph

-- 2. CURSOR POSITION (Typewriter Mode)
-- vim.opt.scrolloff = 999 -- Keep the cursor vertically centered on screen
-- vim.opt.sidescrolloff = 8 -- Keep some context when scrolling horizontally

-- 3. INDENTATION
vim.opt.tabstop = 4 -- Visual width of a tab
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indent
