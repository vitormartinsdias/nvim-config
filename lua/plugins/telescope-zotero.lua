return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "jmbuhr/telescope-zotero.nvim",
        dependencies = {
          "kkharji/sqlite.lua",
        },
      },
    },

    keys = {
      {
        "<leader>fz",
        function()
          require("telescope").extensions.zotero.zotero()
        end,
        desc = "Find Zotero",
      },
    },

    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("zotero")
    end,
  },
}
