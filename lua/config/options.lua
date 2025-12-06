-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--  WRAPPING SETTINGS
vim.opt.wrap = true -- Turn on line wrapping
vim.opt.linebreak = true -- Wrap at whole words (don't cut words in half)
vim.opt.breakindent = true -- Visually indent wrapped lines to match the paragraph

-- Don't let lines wrap immediately after '@' or '-'
-- Keeps '@citation' and 'hyphenated-names' together on the same line.
vim.opt.breakat:remove("@")
vim.opt.breakat:remove("-")

-- CURSOR POSITION (Typewriter Mode)
vim.opt.scrolloff = 999 -- Keeps the cursor vertically centered on screen
-- vim.opt.sidescrolloff = 8 -- Keeps some context when scrolling horizontally

-- INDENTATION
vim.opt.tabstop = 4 -- Visual width of a tab
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indent

-- -- VimTeX Configuration for Skim
-- vim.g.vimtex_view_method = "skim" -- Use Skim
-- vim.g.vimtex_view_skim_sync = 1 -- Update PDF automatically
-- vim.g.vimtex_view_skim_activate = 0 -- Do NOT steal focus (keep cursor in Neovim)

-- Defining the spellchecker
vim.opt.spelllang = { "en", "pt_br" } -- Use a table for multiple languages
vim.opt.spell = true -- Enable spellchecking
