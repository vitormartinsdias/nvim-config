return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- =========================================
      -- SMART WORD COUNTER (Excludes Code & YAML)
      -- =========================================
      local function smart_word_count()
        -- 1. If in Visual Mode, just count selection (standard behavior)
        if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
          return vim.fn.wordcount().visual_words .. " words"
        end

        -- 2. Get all lines in the buffer
        local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
        local count = 0

        -- State variables to track if we are inside code/yaml
        local in_yaml = false
        local in_code_block = false

        for i, line in ipairs(lines) do
          -- A. Check for YAML Frontmatter (only at start of file)
          if i == 1 and line == "---" then
            in_yaml = true
            goto continue -- skip this line
          end
          if in_yaml then
            if line == "---" then
              in_yaml = false
            end
            goto continue -- skip content inside YAML
          end

          -- B. Check for Code Blocks (fences like ```r or ```)
          -- We check if the line starts with 3 backticks
          if line:match("^%s*```") then
            in_code_block = not in_code_block
            goto continue -- skip the fence line itself
          end
          if in_code_block then
            goto continue -- skip content inside code block
          end

          -- C. Process Prose Line (Remove inline code `...`)
          -- Replaces `something` with empty space for counting purposes
          local clean_line = line:gsub("`[^`]+`", "")

          -- D. Count words in the clean line
          -- Iterate over words using Lua pattern matching for alphanumeric strings
          for _ in clean_line:gmatch("%S+") do
            count = count + 1
          end

          ::continue::
        end

        return count .. " words"
      end

      -- =========================================
      -- ADD TO STATUS BAR
      -- =========================================
      table.insert(opts.sections.lualine_x, 1, {
        smart_word_count,
        cond = function()
          local ft = vim.bo.filetype
          return ft == "markdown" or ft == "quarto" or ft == "text" or ft == "pandoc"
        end,
        -- COLOR: Gruvbox Green
        color = { fg = "#b8bb26" },
      })
    end,
  },
}
